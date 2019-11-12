function r = array2strcell(arr)

    % r = array2strcell(arr)
    % 
    % arr is an array, convert it to str cells
    % r = array2strcell([1 2 3]) => r = {'1'}    {'2'}    {'3'}

    r = {};
    for ii = 1:length(arr)
        r = [r num2str(arr(ii))];
    end
end