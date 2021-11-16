function [ targetSeries, predictedSeries, neco ] = MyModel( data )
%Do této funkce implementujte váš výsledný model pro predikci/regresi a
%veškeré algoritmy pro pøedzpracování dat.

%Vstup:             data:           vstupní surová data reprezentující 1
%objekt (1 èasovou øadu, 1 pacienta, 1 obrázek, apod.). 
date = data.Year;
rok = unique(date);
l = length(rok);
neco = zeros(l,4);
tymy = summer.NOC;
tym = unique(tymy);
k
for i = 1:l
    for 
    [gold, silver, bronze, all] = sortingData(data, "USA", rok(i))   

    targetSeries = [gold, silver, bronze, all]
    
    neco(i,:) = targetSeries
end



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
