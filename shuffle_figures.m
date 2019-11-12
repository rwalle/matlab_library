function shuffle_figures
    h = findobj('type', 'figure');
    for ii = 1:length(h)-1
        figure(h(ii));
        pause
    end
    figure(h(end));
end