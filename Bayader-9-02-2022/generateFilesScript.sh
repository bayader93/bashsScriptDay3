#!/bin/bash
count = ls | wc -l
if [$count == 0] 
 then
   for (i = 0; i <= 25; i++ )
    do 
       touch bayader[i].txt
    done

 elif [$count != 0]
  then
    for (i = 0; i <= 25; i++ )
    do 
       touch bayader[$count].txt
    done
   
    fi
done
