#!/bin/sh



#cat sub_list_140.txt sub_ana_140.txt| while read lineA lineB;do 
paste -d@ "sub_list.txt" "sub_ana.txt" | while IFS="@" read -r f1 f2
do
 # printf 'f1: %s\n' "$f1"
  #printf 'f2: %s\n' "$f2"

old="/Users/posnerlab/Documents/Hellerstein/Resting_FSL/4790_8156/fMRI/s13_resting/s13_resting";
old_ana="/Users/posnerlab/Documents/Hellerstein/Resting_FSL/4790_8156/Anatomical/620416ERKs004a1001.nii_brain";

  func=$f1;
  echo $func 
  ana=$f2
  
  echo $ana
    cp Temp.fsf  Tem.fsf
     perl -pi -e  s,$old,$f1,g    Tem.fsf
     perl -pi -e  s,${old_ana},$f2,g    Tem.fsf
#      
     feat  Tem.fsf
      rm  -f Tem.fsf
    done

      



