for file in ~/Desktop/JAVA_Classes/*
do
  if sudo file $file/* | grep directory
   then    
     for file_inside in $file/*
     do
     if sudo file $file_inside/* | grep directory
     then 
      for file_third in $file_inside/*
        do
          if sudo file $file_third/* | grep directory
          then
            for file_fourth in $file_third/*
             do
             if sudo file $file_fourth/* | grep directory
             then
               for file_fifth in $file_fourth/*
                do
                if sudo file $file_fifth/* | grep directory
                then
                  for file_sixth in $file_fifth/*
                  do
                  sudo file $file_sixth
                  done
                  else
                    sudo file $file_fifth
                 fi
               else
                sudo file $file_fifth
                fi
             done
            else
            sudo file $file_third  
            fi
          done 
     else 
      sudo file $file_inside
        fi  
     done
 else
  sudo file $file
 fi
 done
