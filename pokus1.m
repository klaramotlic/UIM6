clear all 
close all 
clc

filePath = pwd


if ~isfolder( filePath )
        error('Folder does not exist.')
    end
        
inputData = readtable([ filePath '/' 'dataOH.csv' ]); %Načtení datového souboru 
numberRecords = size( inputData, 1 ); % Změnit dle nutnosti  


DataSeasonS = inputData(inputData.Season == "Summer",:);
DataSeasonW = inputData(inputData.Season == "Winter",:);


teamS = DataSeasonS.Team;
teamW = DataSeasonW.Team;

TeamnameS = unique(teamS);
TeamnamesW = unique(teamW);

s = TeamnameS(2)


DataTeamS = DataSeasonS(DataSeasonS.Team == "Czech Republic",:);













    