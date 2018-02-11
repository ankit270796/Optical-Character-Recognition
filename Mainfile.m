
%this is the main file for our text to audio encoder 
a=imread('sample2.png');
%here by changing sample value you can check for different samples
b=rgb2gray(a);
c=graythresh(b)*255;
im=b>c;
imshow(im)
[ankline,ankltr] = ankSegment(im);
ankOutput(im,ankline,ankltr);
