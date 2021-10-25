function [ mae, mse, rmse, targetSeries, predictedSeries ] = Main( filePath )
%Funkce slouží pro ovìøení predikèních schopností navrženého modelu.
%Model bude ovìøován na skryté množinì dat, v odevzdaném projektu je proto
%nutné dodržet sktrukturu tohoto kódu. 

%Vstup:     filePath:           Název složky (textový øetìzec) obsahující data
filePath = pwd
%Výstup:    mae:                 Støední absolutní chyba modelu
%           mse:                 Støední kvadratická chyba modelu
%           rmse:                Smìrodatná odchylka residuí
%           targetSeries:        Vstupní "èasová øada"
%           predictedSeries:     Predikovaná "èasová øada"

%Funkce:    MyModel()           Funkce pro implementaci modelu a
%pøedzpracování dat. Do funkce vstupuje vždy jen 1 objekt (èasová øada, pacient, obrázek, apod.)

%           GetScoreOH()          Funkce pro vyhodnocení úspìšnosti
%           modelu. Z dostupných hodnot vyberte do prezentace metriku
%           vhodnou pro vaše data (funkci neupravujte).


    %% Nastavení cest a inicializace promìnných
    if ~isfolder( filePath )
        error('Folder does not exist.')
    end
        
    inputData = readtable([ filePath '/' 'dataOH.csv' ]); %Naètení datového souboru 
    numberRecords = size( inputData, 1 ); % Zmìnit dle nutnosti  

    
    for idx = 1:numberRecords
        
    
        %% Urèení výstupu modelu pro 1 objekt
        [ targetSeries, predictedSeries ] = MyModel( inputData ); %Výstup modelu (predikce poètu medaili)

        
        %% Vyhodnocení modelu
        [ mae, mse, rmse ] = GetScoreOH( targetSeries, predictedSeries );

    end


end



