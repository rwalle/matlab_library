function out = unnormalize(nvar, cmax)
    maxint = double(intmax('int16'));
    out = double(nvar) / maxint * cmax;
end