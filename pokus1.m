clear all 
close all 
clc

filePath = pwd
team = "CZE"
year  = 2000


if ~isfolder( filePath )
        error('Folder does not exist.')
end




        
inputData = readtable([ filePath '/' 'dataOH.csv' ]); %Načtení datového souboru 
numberRecords = size( inputData, 1 ); % Změnit dle nutnosti  


date = inputData(inputData.Year == year,:);


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













    