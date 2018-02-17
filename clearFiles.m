function clearFiles()
    filePath = 'E:\FCI\Third year\Second term\Pattern Recognition\images';
    for i = 0:9 
       fileID = fopen([filePath '\' int2str(i) '\FV.txt'], 'w');
       fclose(fileID);
    end
end