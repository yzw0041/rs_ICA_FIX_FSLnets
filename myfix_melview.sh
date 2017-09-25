#!/bin/sh 


cat "sub_list_fix.txt" | while read line; do
  
/Users/posnerlab/Documents/Tools/FSL_Tool/fix/fix      -c   ${line}   Mytraining.RData  20
/Users/posnerlab/Documents/Tools/FSL_Tool/fix/fix       -a    ${line}/fix4melview_Mytraining_thr20.txt  


done