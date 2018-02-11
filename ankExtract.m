function []=ankExtract(im,ankline,ankltr)
%this function is used to define your own database so matching can be
%performed for that font

[u,v]=size(ankline);
[p,q]=size(ankltr);
f=double(1);
j=double(1);
k=double(1);
im=double(im);
x=double(0); y=double(0); z=double(0); w=double(0);

  while((k<=p)&&(ankltr(k+2)~=-2))
   if(ankltr(k+1)==-1)
      k=k+2;
      j=j+2;
   end
   x=ankline(j);
   y=ankline(j+1);   
   z=ankltr(k);
   w=ankltr(k+1);
   
   if ((w-z)>=2)
   a=im(x:y,z:w);
  imwrite(a,strcat(num2str(k),'.png'));
   end
   k=k+1;
  end

  
    

  
  

