function img = readImg(path)
   
img = imread(path);
img = im2bw(img);
img = imcomplement(img);

end
