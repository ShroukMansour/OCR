function num = recognizer(imgPath)
    img = readImg(imgPath);
    imgFV = calcCentroidMat(img);
    filePath = 'E:\FCI\Third year\Second term\Pattern Recognition\images';
    error = [];

    for i = 0:9 
       fileID = fopen([filePath '\' int2str(i) '\FV.txt' ]);
       avgFV = fscanf(fileID, '%f %f %f %f %f %f %f %f\n');
       avgFV = avgFV(81:88, 1);
       error = [error, sum((avgFV' - imgFV).^2)];
       fclose(fileID);
    end
    
    [fake, num] = min(error);
    num = num - 1;
end