function calcAvg(path)

    fileID = fopen(path);
    data = fscanf(fileID, '%f %f %f %f %f %f %f %f\n'); % read all file
    FVs = reshape(data', 1, 8, 10);% divide into 10 vectors
    avgFV = sum(FVs, 3) / 10; 
    writeCentroid(avgFV, path);
    
end
