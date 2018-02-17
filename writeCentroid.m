function writeCentroid (fv, path)
    fileId = fopen(path, 'a');
    fmt = '%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f\n';
    fprintf(fileId, fmt, fv);
    fclose(fileId);
end