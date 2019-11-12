function [fList,pList] = get_dependencies(filename)
    
    [fList,pList] = matlab.codetools.requiredFilesAndProducts(filename);
    
end