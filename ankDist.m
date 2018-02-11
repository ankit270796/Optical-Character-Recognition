function [par]=ankDist(im,temp)
%this function is used to find how close two images are
[u,v]=size(im);
tem=ankResize(temp,im);
par=corr2(tem,im);