function [character]=ankCompare(testim)
%this defines the whole way through which image is mapped to corresponding
%letter

%Pass the segmented letter(call from the ank segment)
%then calculate the black pixels over white pixels
%load the image for both the image and scale both of them to same rows
%if % is less than 30 than compare only to the characters
%else compare to first smallcase then to the uppercase
%now calculate the ratio of no of coloumns in the template to the test image
%make histogram of both the images and then compare and note down the match

%if no compare is found then seperate the image and again compare else
%leave that letter
%check the max match and then choose corresponding value con to letter 
%concatenate to the string

% eng=ankLetterAscii;
%minimum black to white ratio is for c=0.1743(smallcase)

%database is a vector containing the ascii values of chars
database=ankLetterAscii();
match=500*ones(71,1);
i=1;
while(i<=71)
   if(max(testim)==min(testim)) 
   break;
   end
   template=ankRead(i);
   match(i)=ankDist(testim,template);
   if(match(i)==0)    %perfect match
   break
   end
   i=i+1;
end

if(max(testim)==min(testim))
    index=72;
else
a=max(match);
index=find(match==a);
end
character=char(database(index(1,1)));


    

