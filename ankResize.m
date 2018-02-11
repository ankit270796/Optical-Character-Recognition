function [test]=ankResize(testltr,template)
%this one used specially used to map image so that it can be matched
%for making the process of recognization easy

%returns resized binary image
%testletter contains the image to be matched
[x,y]=size(template);
testltr=im2uint8(testltr);
temp=imresize(testltr,[x y]);
a=graythresh(temp)*255;
temp=temp>a;
test=temp;
