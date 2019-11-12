function boxplot_from_cell(c)

    % boxplot_from_cell(c)
    %
    % example: boxplot_from_cell({[1,2,3], [4,5,6,7]});
    s = 0;
    for ii = 1:size(c, 2)
        s = s + length(c{ii});
    end
    g = zeros(1, s);
    v = zeros(1, s);
    s = 0;
    for ii = 1:size(c, 2)
        g(s+1:s+length(c{ii})) = ii;
        v(s+1:s+length(c{ii})) = c{ii};
        s = s + length(c{ii});
    end
    boxplot(v, g);
end