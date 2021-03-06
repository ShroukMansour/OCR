function centroid = calcCentroidMat(img) 
    centroid = [];
    sz = mod(size(img), 4) + size(img); % padding to be divided by 4
    img(sz(1), sz(2)) = 0;
    %sections = reshape(img, size(img, 1)/2, size(img, 2)/2, 4);
    sections = mat2cell(img, [size(img, 1)/2, size(img, 1)/2], [size(img, 2)/2, size(img, 2)/2]);
    sections = cat(3, sections{:});
    for i = 1:size(sections, 3) % loop over third dimesntion
        [x, y] = find(sections(:, :, i) == 1); % find indeces of all 1 in x, y 
        numOf1s = sum(sum(sections(:, :, i) == 1));
        if numOf1s == 0
            centroid = [centroid, 0, 0];
        else
            centroid = [centroid, ((sum(y) / numOf1s) / sz(2)), ((sum(x) / numOf1s) / sz(1))]; 
        end
    end
end


