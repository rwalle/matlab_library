function st = random_string(len)
    s = ['a':'z' 'A':'Z' '0':'9'];
    if nargin == 0
        len = 32;
    end
    
    numRands = length(s); 
    
    st = s( ceil(rand(1,len)*numRands) );
end