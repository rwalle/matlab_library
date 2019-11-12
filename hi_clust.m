function [g, eucD] = hi_clust(in)
    % eucD = pdist(fvall2,'euclidean');
    eucD = pdist(in,'correlation');
    eucD = 1 - abs(1-eucD);
    clustTreeEuc = linkage(eucD,'average');
    cophenet(clustTreeEuc,eucD)
    [h,nodes] = dendrogram(clustTreeEuc,0);
    h_gca = gca;
    h_gca.TickDir = 'out';
    h_gca.TickLength = [.002 0];
    g = str2num(h_gca.XTickLabel);
    % h_gca.XTickLabel = [];
end