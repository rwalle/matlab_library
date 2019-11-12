function [nor, cmax] = normalize(arr)
    maxint = double(intmax('int16'));
    
    s = size(arr);
    cmax = abs(arr);
    
    for ii = 1:length(s)
        cmax = max(squeeze(cmax));
    end
    
    nor = int16(arr / cmax * maxint);

end