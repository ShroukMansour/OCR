function trainer()
    path = 'E:\FCI\Third year\Second term\Pattern Recognition\images';
    for i = 0:9 
       for j = 0:9
           img = readImg([path '\' int2str(i) '\' int2str(j) '.jpg']);
           centroid = calcCentroidMat(img);
           writeCentroid(centroid, [path '\' int2str(i) '\FV.txt' ]);
       end
       calcAvg([path '\' int2str(i) '\FV.txt' ]);
    end
end