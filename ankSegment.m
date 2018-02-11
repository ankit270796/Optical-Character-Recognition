
function [ankline,ankltr] = ankSegment(im)
%this program is used to differenciate b/w the letters so that segmentation
%can be applied on them,following matching
[u,v]=size(im);
vert=[0];
for i=2:u-1
    if((max(im(i,:))~=min(im(i,:)))&&(max(im(i-1,:))==min(im(i-1,:)))||(max(im(i+1,:))==min(im(i+1,:))))
        if((max(im(i,:))~=min(im(i,:)))&&(max(im(i-1,:))==min(im(i-1,:))))
            vert=[vert;i-1];
        end
    if((max(im(i,:))~=min(im(i,:)))&&(max(im(i+1,:))==min(im(i+1,:))))
        vert=[vert;i+1];
        end
    end
end
vert=vert(2:end);
[t,s]=size(vert)
clear s
clear u
horz=0;                                  
for j=1:2:t
  for i=2:v-1
       s=vert(j+1);
       t=vert(j);
      if((max(im(t:s,i))==min(im(t:s,i)))&&((max(im(t:s,i-1))~=min(im(t:s,i-1)))||(max(im(t:s,i+1))~=min(im(t:s,i+1)))))
      horz=[horz;i];
  end
  end
              horz=[horz;-1];     % represents the change of line
end
  horz=[horz;-2];                 % represents end of text
ankltr=double(horz(2:end));
ankline=double(vert);
size(ankltr);


