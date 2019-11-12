function copy_dependencies(fn, outdir)
    % copy all dependent files of a program
    %
    % copy_dependencies(fn, outdir)
    % if outdir is not specified, a dialog box will pop up
    %
    % Example: copy_dependencies('onekey.m');
    %          copy_dependencies('onekey.m', 'onekeydependency/');
    %
    % Zhe Li, Oct 2018
    
    [f, p] = matlab.codetools.requiredFilesAndProducts(fn);
    f = f';
    
    if nargin == 1
        outdir = uigetdir;
    end
    
    for ii = 1:length(f)
        copyfile(f{ii}, outdir);
    end
    
    if length(p) > 1
        fprintf('The following products may also be required:\n\n')

        for ii = 2:length(p)
            disp(p(ii).Name);
        end
    end
end