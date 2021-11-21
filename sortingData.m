function [Gold, Bronze, Silver, countFull] = sortingData(data, team, year)
%sorting Data: function for sorting data
%   

date = data(data.Year == year,:);


% teamS = data.Team;


% TeamnameS = unique(teamS);



DataTeamS = date(date.NOC == team,:);


[Gold,x] = size(DataTeamS(DataTeamS.Medal == "Gold","ID"));
[Silver,x] = size(DataTeamS(DataTeamS.Medal == "Silver","ID"));
[Bronze,x] = size(DataTeamS(DataTeamS.Medal == "Bronze","ID")); 
[countFull,x] = size(DataTeamS);


end