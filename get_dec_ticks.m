function [ticks, ticklabels] = get_dec_ticks(freq)
    log_freq = log10(freq);
    loop = ceil(min(log_freq)) : floor(max(log_freq));
    ticks = [];
    ticklabels = {};
    
    % fix numerical error
    if abs(round(log10(freq(1))) - log10(freq(1))) < 1e-4 && loop(1) ~= round(log10(freq(1)))
        ticks = [ticks 1];
        ticklabels = {num2str(10^round(log10(freq(1))))};
    end
        
    for ii = loop
        x = log_freq - ii;
        ind = find(x(1:end-1)<=0 & x(2:end) >= 0, 1);
        if (10^ii - freq(ind)) > (freq(ind+1) - 10^ii)
            ticks = [ticks ind+1];
        else
            ticks = [ticks ind];
        end
        ticklabels{end+1} = num2str(10^ii);
    end
    
    % fix numerical error
    if abs(round(log10(freq(end))) - log10(freq(end))) < 1e-4 && loop(end) ~= round(log10(freq(end)))
        ticks = [ticks length(freq)];
        ticklabels{end+1} = num2str(10^round(log10(freq(end))));
    end
end
