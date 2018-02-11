function x = ankReplicate(im,deg)
%this is used to replicate the image pixels 
im=double(im);
[u,v]=size(im);
a1=im;

a1=[im(:,1),im(:,1),im(:,1)];

for i=2:v       %horz replicate
    a1=[a1,im(:,i)];
   for j=1:deg
       a1=[a1,im(:,i)];
   end
end

 a2=[a1(1,:);a1(1,:);a1(1,:)];
for i=2:u     %vert replicate
       a2=[a2;a1(i,:)]; 
     for j=1:deg
        a2=[a2;a1(i,:)];
    end
 end
 x=a2;



        