#!/bin/sh 


# bet function 
# create anatomical list 
 cat "test.txt" | while read ana;do 
 
     echo $ana
       gzip ${ana}.nii 
   
    
 
     bet  ${ana}  ${ana}_brain  -R  -f 0.4
     
done
