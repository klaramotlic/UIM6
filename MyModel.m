function [ targetSeries, predictedSeries ] = MyModel( data )
%Do této funkce implementujte váš výsledný model pro predikci/regresi a
%veškeré algoritmy pro pøedzpracování dat.

%Vstup:             data:           vstupní surová data reprezentující 1
%objekt (1 èasovou øadu, 1 pacienta, 1 obrázek, apod.). 
DataSummer = data(data.Season == "Summer",:);
roky = unique(DataSummer.Year);
number_of_years = length(roky);

teams = unique(DataSummer.NOC);

number_of_teams = length(teams);





R = zeros(number_of_years,number_of_teams,4);

for rok = 1:number_of_years
    for team = 1:number_of_teams
        [gold, silver, bronze, all] = sortingData(DataSummer, string(teams(team)), roky(rok));
        number_of_medals = [gold, silver, bronze, all];
        R(rok,team,1) = number_of_medals(1);
        R(rok,team,2) = number_of_medals(2);
        R(rok,team,3) = number_of_medals(3);
        R(rok,team,4) = number_of_medals(4);
    end

end




targetSeries = R;

x = R(:,:,1);
y = R(:,:,2);
z = R(:,:,3);
q = R(:,:,4);




figure("Name","Gold")
bar3(x)
xlabel("Týmy")
ylabel("Roky")
zlabel("Poèet")
figure("Name","Silver")
bar3(y)
xlabel("Týmy")
ylabel("Roky")
zlabel("Poèet")
figure("Name","Bronze")
bar3(z)
xlabel("Týmy")
ylabel("Roky")
zlabel("Poèet")
figure("Name","All")
bar3(q)
xlabel("Týmy")
ylabel("Roky")
zlabel("Poèet")

%Výstup:            targetSeries:         "èasová øada" zaznamenaných poètù
%medaili (dle databáze) v jednotlivých sezonách
%                   predictedSeries:      "èasová øada" predikovaných poètù medaili dle algoritmu

% targetSeries = GetTargetSeries( ... ); % doplnit potøebné vstupní promìnné
% predictedSeries = [];
% 
% end
% 
% function targetSeries = GetTargetSeries( input )
% %Do této funkce doplòte algoritmus pro urèení výstupní èasové sekvence
% %poètù medaili ze surových dat, dostupných pro jednotlivé jedince.
% 
%     targetSeries = [];

end