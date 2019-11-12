function [avg, err] = weighted_stats(mat, weight)
    [nrow, ncol] = size(mat);
    weight = reshape(weight, [nrow, 1]);
    weight_norm = weight / sum(weight);
    avg = sum(mat .* repmat(weight_norm, [1 ncol]), 1);
    err = sqrt(sum( ...
        ((mat - repmat(avg, [nrow 1])) .* repmat(weight_norm, [1 ncol])).^2 ...
        , 1));
end