function [res, avg, sd] = scale(in, weight)
    n = size(in, 1);
    if nargin == 1
        sd = std(in, [], 1);
        avg = mean(in, 1);
    elseif nargin == 2
        [avg, sd] = weighted_stats(in, weight);
    end
    
    res = (in - repmat(avg, [n 1])) ./ repmat(sd, [n 1]);
end