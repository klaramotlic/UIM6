function [Gold, Bronze, Silver, countFull] = sortingData(data, team, year)
%sorting Data: function for sorting data
%   

date = data(data.Year == year,:);


DataSeasonS = date(date.Season == "Summer",:);
DataSeasonW = date(date.Season == "Winter",:);


teamS = DataSeasonS.Team;
teamW = DataSeasonW.Team;

TeamnameS = unique(teamS);
TeamnamesW = unique(teamW);


DataTeamS = DataSeasonS(DataSeasonS.NOC == team,:);


[Gold,x] = size(DataTeamS(DataTeamS.Medal == "Gold","ID"));
[Silver,x] = size(DataTeamS(DataTeamS.Medal == "Silver","ID"));
[Bronze,x] = size(DataTeamS(DataTeamS.Medal == "Bronze","ID")); 
[countFull,x] = size(DataTeamS);


end