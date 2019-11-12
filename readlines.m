function s = readlines(fid)
% s = readlines(fid)
% Python-style readlines
% reads in a file ID, returns a cell array

    s = {};
    tline = fgetl(fid);
    while ischar(tline)
       s = [s; tline];
       tline = fgetl(fid);
    end

end