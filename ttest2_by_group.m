function [h, p] = ttest2_by_group(data, group)

    % [h, p] = ttest2_by_group(data, group)
    %
    % example: [h,p] = ttest2_by_group([1 2 3 8 9 10 11], [1,1,1,2,2,2,2]);
    
    g0 = unique(group);
    u1 = group == g0(1);
    s1 = data(u1);
    u2 = group == g0(2);
    s2 = data(u2);
    
    [h, p] = ttest2(s1, s2);

end