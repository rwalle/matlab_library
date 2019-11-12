function x = get_cursor_data
% x = get_cursor_data
    h = datacursormode;
    s = getCursorInfo(h);
    x = s.Position;
end
