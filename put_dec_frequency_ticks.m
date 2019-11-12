function put_dec_frequency_ticks(freq)

    [ticks, ticklabels] = get_dec_ticks(freq);
    set(gca, 'XTick', ticks, 'TickDir', 'in');
    set(gca, 'XTickLabel', ticklabels);
    xlabel('Frequency (Hz)');
    
end