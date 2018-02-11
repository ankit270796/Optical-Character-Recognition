function [an]=ankOutput(im,ankline,ankltr)
ank=char(32);
% One of the main file that creates the output string and then converts it
% back to the audio string
[u,v]=size(ankline);
[p,q]=size(ankltr);
f=double(1);
j=double(1);
k=double(1);
im=double(im);
x=double(0); y=double(0); z=double(0); w=double(0);
gap=0;
  while((k<=p)&&(ankltr(k+2)~=-2))
   if(ankltr(k+1)==-1)
      k=k+2;
      pm=char(32);
      j=j+2;
      ank=[ank,pm];
   end
   x=ankline(j);
   y=ankline(j+1);   
   z=ankltr(k);
   w=ankltr(k+1);
   
   if ((w-z)>=3)
  a=im(x:y,z:w);
  [u,v]=size(a);
  a1=0;
  a2=0;
  for i=1:u-1
      if((max(a(i,:))==min(a(i,:)))&&(max(a(i+1,:))~=min(a(i+1,:))))
       a1=i;
       break;
     end  
  end
  for i=u:-1:2
      if((max(a(i,:))==min(a(i,:)))&&(max(a(i-1,:))~=min(a(i-1,:))))
       a2=i;
       break;
      end
  end
  
     if(a1==0)
         a1=1;
     end
     if(a2==0)
         a2=u;
     end
%      a1,a2
%    imwrite(a(a1:a2,:),strcat(num2str(k),'.png'));        
 fa=a(a1:a2,:);
  if(max(fa)==min(fa))
      if((w-z)>gap/2)
          an=ankCompare(a(a1:a2,:)); ank=[ank,an];
      end
  else
      an=ankCompare(a(a1:a2,:)); ank=[ank,an];
 end
gap=w-z;
 end
    k=k+1;
  end
  
 an=ank(:,2:end);
 % an contains the resulting string
 %section below is used fully to convert the string to the audio file
NET.addAssembly('System.Speech');
obj = System.Speech.Synthesis.SpeechSynthesizer;
obj.Volume = 100;
Speak(obj, an);        %speaks out the resulting string

  