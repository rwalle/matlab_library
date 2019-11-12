function [d, coeff] = point_plane_distance(v1, v2, a)
       
    if size(a, 2) == 1
        a = a';
    end
    V = [v1*v1' v1*v2';
    v2*v1' v2*v2'];
    % coeff = V^-1 * ([v1;v2] * a');
    % d = norm([v1;v2]' * coeff - a);
    coeff = V^-1 * [a * v1'; a * v2'];
    d = norm(coeff' * [v1; v2] - a);
end