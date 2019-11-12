function m_out = scaled_around_mean(m_in)
    m_out = zeros(size(m_in));
    
    for ii = 1:size(m_in, 2)
        m = mean(m_in(:, ii));
        s = std(m_in(:, ii), 1);
        m_out(:, ii) = (m_in(:, ii) - m) / s + m;
    end

end