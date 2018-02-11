function [binim]=ankRead(i)
%this function reads the images from the database in raw format

str=num2str(i);
im=strcat(num2str(i),'.png');
 a=imread(im);
binim=logical(a);