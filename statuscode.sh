#!/bin/bash

checkCode(){
  if [ $1 = 404 ]; then
    echo $2","$1 >> "urls_with404.txt"
  else
    echo $2","$1 >> "urls_codes.txt"
  fi
}

finishRest(){
  restoflines=$(($numoflines % 10))
  if [ $restoflines -gt 0 ]; then
    for (( rest=0; rest<$restoflines; rest++ ))
    do
      realnum=$(($numoflines - $restoflines + $rest))
      if [ "${urls[$realnum]}" != "" ]; then
          responseCode=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$realnum]}"` && checkCode $responseCode "${urls[$realnum]}"
          wait
          echo "just a little more..."
      fi
    done
  fi
  echo "It's all done, thank you for your patience! :)"
}

speed1(){
  for (( i=$1; i<=$numoflines-10; i+=10 ))
  do
    responseCode1=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i]}"` && checkCode $responseCode1 "${urls[$i]}" &
    responseCode2=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+1]}"` && checkCode $responseCode2 "${urls[$i+1]}" &
    responseCode3=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+2]}"` && checkCode $responseCode3 "${urls[$i+2]}" &
    responseCode4=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+3]}"` && checkCode $responseCode4 "${urls[$i+3]}" &
    responseCode5=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+4]}"` && checkCode $responseCode5 "${urls[$i+4]}" &
    responseCode6=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+5]}"` && checkCode $responseCode6 "${urls[$i+5]}" &
    responseCode7=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+6]}"` && checkCode $responseCode7 "${urls[$i+6]}" &
    responseCode8=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+7]}"` && checkCode $responseCode8 "${urls[$i+7]}" &
    responseCode9=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+8]}"` && checkCode $responseCode9 "${urls[$i+8]}" &
    responseCode10=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+9]}"` && checkCode $responseCode10 "${urls[$i+9]}"
    wait
    echo "done $(($i+10)) out of $numoflines"
  done
finishRest
}

speed2(){
  for (( i=0; i<=$numoflines-20; i+=20 ))
  do
    responseCode1=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i]}"` && checkCode $responseCode1 "${urls[$i]}" &
    responseCode2=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+1]}"` && checkCode $responseCode2 "${urls[$i+1]}" &
    responseCode3=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+2]}"` && checkCode $responseCode3 "${urls[$i+2]}" &
    responseCode4=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+3]}"` && checkCode $responseCode4 "${urls[$i+3]}" &
    responseCode5=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+4]}"` && checkCode $responseCode5 "${urls[$i+4]}" &
    responseCode6=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+5]}"` && checkCode $responseCode6 "${urls[$i+5]}" &
    responseCode7=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+6]}"` && checkCode $responseCode7 "${urls[$i+6]}" &
    responseCode8=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+7]}"` && checkCode $responseCode8 "${urls[$i+7]}" &
    responseCode9=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+8]}"` && checkCode $responseCode9 "${urls[$i+8]}" &
    responseCode10=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+9]}"` && checkCode $responseCode10 "${urls[$i+9]}" &
    responseCode11=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+10]}"` && checkCode $responseCode11 "${urls[$i+10]}" &
    responseCode12=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+11]}"` && checkCode $responseCode12 "${urls[$i+11]}" &
    responseCode13=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+12]}"` && checkCode $responseCode13 "${urls[$i+12]}" &
    responseCode14=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+13]}"` && checkCode $responseCode14 "${urls[$i+13]}" &
    responseCode15=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+14]}"` && checkCode $responseCode15 "${urls[$i+14]}" &
    responseCode16=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+15]}"` && checkCode $responseCode16 "${urls[$i+15]}" &
    responseCode17=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+16]}"` && checkCode $responseCode17 "${urls[$i+16]}" &
    responseCode18=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+17]}"` && checkCode $responseCode18 "${urls[$i+17]}" &
    responseCode19=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+18]}"` && checkCode $responseCode19 "${urls[$i+18]}" &
    responseCode20=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+19]}"` && checkCode $responseCode20 "${urls[$i+19]}"
    wait
    echo "done $(($i+20)) out of $numoflines"
  done
  rest2=$(($numoflines % 20))
  if [ $rest2 -gt 9 ]; then
    speed1 $(($numoflines - $rest2))
  else
  finishRest
  fi
}

speed3(){
  for (( i=0; i<=$numoflines-30; i+=30 ))
  do
    responseCode1=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i]}"` && checkCode $responseCode1 "${urls[$i]}" &
    responseCode2=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+1]}"` && checkCode $responseCode2 "${urls[$i+1]}" &
    responseCode3=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+2]}"` && checkCode $responseCode3 "${urls[$i+2]}" &
    responseCode4=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+3]}"` && checkCode $responseCode4 "${urls[$i+3]}" &
    responseCode5=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+4]}"` && checkCode $responseCode5 "${urls[$i+4]}" &
    responseCode6=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+5]}"` && checkCode $responseCode6 "${urls[$i+5]}" &
    responseCode7=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+6]}"` && checkCode $responseCode7 "${urls[$i+6]}" &
    responseCode8=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+7]}"` && checkCode $responseCode8 "${urls[$i+7]}" &
    responseCode9=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+8]}"` && checkCode $responseCode9 "${urls[$i+8]}" &
    responseCode10=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+9]}"` && checkCode $responseCode10 "${urls[$i+9]}" &
    responseCode11=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+10]}"` && checkCode $responseCode11 "${urls[$i+10]}" &
    responseCode12=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+11]}"` && checkCode $responseCode12 "${urls[$i+11]}" &
    responseCode13=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+12]}"` && checkCode $responseCode13 "${urls[$i+12]}" &
    responseCode14=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+13]}"` && checkCode $responseCode14 "${urls[$i+13]}" &
    responseCode15=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+14]}"` && checkCode $responseCode15 "${urls[$i+14]}" &
    responseCode16=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+15]}"` && checkCode $responseCode16 "${urls[$i+15]}" &
    responseCode17=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+16]}"` && checkCode $responseCode17 "${urls[$i+16]}" &
    responseCode18=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+17]}"` && checkCode $responseCode18 "${urls[$i+17]}" &
    responseCode19=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+18]}"` && checkCode $responseCode19 "${urls[$i+18]}" &
    responseCode20=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+19]}"` && checkCode $responseCode20 "${urls[$i+19]}" &
    responseCode21=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+20]}"` && checkCode $responseCode21 "${urls[$i+20]}" &
    responseCode22=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+21]}"` && checkCode $responseCode22 "${urls[$i+21]}" &
    responseCode23=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+22]}"` && checkCode $responseCode23 "${urls[$i+22]}" &
    responseCode24=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+23]}"` && checkCode $responseCode24 "${urls[$i+23]}" &
    responseCode25=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+24]}"` && checkCode $responseCode25 "${urls[$i+24]}" &
    responseCode26=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+25]}"` && checkCode $responseCode26 "${urls[$i+25]}" &
    responseCode27=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+26]}"` && checkCode $responseCode27 "${urls[$i+26]}" &
    responseCode28=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+27]}"` && checkCode $responseCode28 "${urls[$i+27]}" &
    responseCode29=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+28]}"` && checkCode $responseCode29 "${urls[$i+28]}" &
    responseCode30=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+29]}"` && checkCode $responseCode30 "${urls[$i+29]}"
    wait
    echo "done $(($i+30)) out of $numoflines"
  done
  rest2=$(($numoflines % 30))
  if [ $rest2 -gt 9 ]; then
    speed1 $(($numoflines - $rest2))
  else
  finishRest
  fi
}

speed4(){
  for (( i=0; i<=$numoflines-40; i+=40 ))
  do
    responseCode1=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i]}"` && checkCode $responseCode1 "${urls[$i]}" &
    responseCode2=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+1]}"` && checkCode $responseCode2 "${urls[$i+1]}" &
    responseCode3=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+2]}"` && checkCode $responseCode3 "${urls[$i+2]}" &
    responseCode4=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+3]}"` && checkCode $responseCode4 "${urls[$i+3]}" &
    responseCode5=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+4]}"` && checkCode $responseCode5 "${urls[$i+4]}" &
    responseCode6=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+5]}"` && checkCode $responseCode6 "${urls[$i+5]}" &
    responseCode7=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+6]}"` && checkCode $responseCode7 "${urls[$i+6]}" &
    responseCode8=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+7]}"` && checkCode $responseCode8 "${urls[$i+7]}" &
    responseCode9=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+8]}"` && checkCode $responseCode9 "${urls[$i+8]}" &
    responseCode10=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+9]}"` && checkCode $responseCode10 "${urls[$i+9]}" &
    responseCode11=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+10]}"` && checkCode $responseCode11 "${urls[$i+10]}" &
    responseCode12=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+11]}"` && checkCode $responseCode12 "${urls[$i+11]}" &
    responseCode13=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+12]}"` && checkCode $responseCode13 "${urls[$i+12]}" &
    responseCode14=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+13]}"` && checkCode $responseCode14 "${urls[$i+13]}" &
    responseCode15=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+14]}"` && checkCode $responseCode15 "${urls[$i+14]}" &
    responseCode16=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+15]}"` && checkCode $responseCode16 "${urls[$i+15]}" &
    responseCode17=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+16]}"` && checkCode $responseCode17 "${urls[$i+16]}" &
    responseCode18=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+17]}"` && checkCode $responseCode18 "${urls[$i+17]}" &
    responseCode19=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+18]}"` && checkCode $responseCode19 "${urls[$i+18]}" &
    responseCode20=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+19]}"` && checkCode $responseCode20 "${urls[$i+19]}" &
    responseCode21=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+20]}"` && checkCode $responseCode21 "${urls[$i+20]}" &
    responseCode22=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+21]}"` && checkCode $responseCode22 "${urls[$i+21]}" &
    responseCode23=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+22]}"` && checkCode $responseCode23 "${urls[$i+22]}" &
    responseCode24=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+23]}"` && checkCode $responseCode24 "${urls[$i+23]}" &
    responseCode25=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+24]}"` && checkCode $responseCode25 "${urls[$i+24]}" &
    responseCode26=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+25]}"` && checkCode $responseCode26 "${urls[$i+25]}" &
    responseCode27=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+26]}"` && checkCode $responseCode27 "${urls[$i+26]}" &
    responseCode28=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+27]}"` && checkCode $responseCode28 "${urls[$i+27]}" &
    responseCode29=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+28]}"` && checkCode $responseCode29 "${urls[$i+28]}" &
    responseCode30=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+29]}"` && checkCode $responseCode30 "${urls[$i+29]}" &
    responseCode31=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+30]}"` && checkCode $responseCode31 "${urls[$i+30]}" &
    responseCode32=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+31]}"` && checkCode $responseCode32 "${urls[$i+31]}" &
    responseCode33=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+32]}"` && checkCode $responseCode33 "${urls[$i+32]}" &
    responseCode34=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+33]}"` && checkCode $responseCode34 "${urls[$i+33]}" &
    responseCode35=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+34]}"` && checkCode $responseCode35 "${urls[$i+34]}" &
    responseCode36=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+35]}"` && checkCode $responseCode36 "${urls[$i+35]}" &
    responseCode37=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+36]}"` && checkCode $responseCode37 "${urls[$i+36]}" &
    responseCode38=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+37]}"` && checkCode $responseCode38 "${urls[$i+37]}" &
    responseCode39=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+38]}"` && checkCode $responseCode39 "${urls[$i+38]}" &
    responseCode40=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+39]}"` && checkCode $responseCode40 "${urls[$i+39]}"
    wait
    echo "done $(($i+40)) out of $numoflines"
  done
  rest2=$(($numoflines % 40))
  if [ $rest2 -gt 9 ]; then
    speed1 $(($numoflines - $rest2))
  else
  finishRest
  fi
}

speed5(){
  for (( i=0; i<=$numoflines-50; i+=50 ))
  do
    responseCode1=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i]}"` && checkCode $responseCode1 "${urls[$i]}" &
    responseCode2=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+1]}"` && checkCode $responseCode2 "${urls[$i+1]}" &
    responseCode3=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+2]}"` && checkCode $responseCode3 "${urls[$i+2]}" &
    responseCode4=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+3]}"` && checkCode $responseCode4 "${urls[$i+3]}" &
    responseCode5=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+4]}"` && checkCode $responseCode5 "${urls[$i+4]}" &
    responseCode6=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+5]}"` && checkCode $responseCode6 "${urls[$i+5]}" &
    responseCode7=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+6]}"` && checkCode $responseCode7 "${urls[$i+6]}" &
    responseCode8=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+7]}"` && checkCode $responseCode8 "${urls[$i+7]}" &
    responseCode9=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+8]}"` && checkCode $responseCode9 "${urls[$i+8]}" &
    responseCode10=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+9]}"` && checkCode $responseCode10 "${urls[$i+9]}" &
    responseCode11=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+10]}"` && checkCode $responseCode11 "${urls[$i+10]}" &
    responseCode12=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+11]}"` && checkCode $responseCode12 "${urls[$i+11]}" &
    responseCode13=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+12]}"` && checkCode $responseCode13 "${urls[$i+12]}" &
    responseCode14=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+13]}"` && checkCode $responseCode14 "${urls[$i+13]}" &
    responseCode15=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+14]}"` && checkCode $responseCode15 "${urls[$i+14]}" &
    responseCode16=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+15]}"` && checkCode $responseCode16 "${urls[$i+15]}" &
    responseCode17=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+16]}"` && checkCode $responseCode17 "${urls[$i+16]}" &
    responseCode18=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+17]}"` && checkCode $responseCode18 "${urls[$i+17]}" &
    responseCode19=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+18]}"` && checkCode $responseCode19 "${urls[$i+18]}" &
    responseCode20=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+19]}"` && checkCode $responseCode20 "${urls[$i+19]}" &
    responseCode21=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+20]}"` && checkCode $responseCode21 "${urls[$i+20]}" &
    responseCode22=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+21]}"` && checkCode $responseCode22 "${urls[$i+21]}" &
    responseCode23=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+22]}"` && checkCode $responseCode23 "${urls[$i+22]}" &
    responseCode24=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+23]}"` && checkCode $responseCode24 "${urls[$i+23]}" &
    responseCode25=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+24]}"` && checkCode $responseCode25 "${urls[$i+24]}" &
    responseCode26=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+25]}"` && checkCode $responseCode26 "${urls[$i+25]}" &
    responseCode27=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+26]}"` && checkCode $responseCode27 "${urls[$i+26]}" &
    responseCode28=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+27]}"` && checkCode $responseCode28 "${urls[$i+27]}" &
    responseCode29=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+28]}"` && checkCode $responseCode29 "${urls[$i+28]}" &
    responseCode30=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+29]}"` && checkCode $responseCode30 "${urls[$i+29]}" &
    responseCode31=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+30]}"` && checkCode $responseCode31 "${urls[$i+30]}" &
    responseCode32=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+31]}"` && checkCode $responseCode32 "${urls[$i+31]}" &
    responseCode33=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+32]}"` && checkCode $responseCode33 "${urls[$i+32]}" &
    responseCode34=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+33]}"` && checkCode $responseCode34 "${urls[$i+33]}" &
    responseCode35=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+34]}"` && checkCode $responseCode35 "${urls[$i+34]}" &
    responseCode36=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+35]}"` && checkCode $responseCode36 "${urls[$i+35]}" &
    responseCode37=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+36]}"` && checkCode $responseCode37 "${urls[$i+36]}" &
    responseCode38=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+37]}"` && checkCode $responseCode38 "${urls[$i+37]}" &
    responseCode39=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+38]}"` && checkCode $responseCode39 "${urls[$i+38]}" &
    responseCode40=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+39]}"` && checkCode $responseCode40 "${urls[$i+39]}" &
    responseCode41=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+40]}"` && checkCode $responseCode41 "${urls[$i+40]}" &
    responseCode42=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+41]}"` && checkCode $responseCode42 "${urls[$i+41]}" &
    responseCode43=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+42]}"` && checkCode $responseCode43 "${urls[$i+42]}" &
    responseCode44=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+43]}"` && checkCode $responseCode44 "${urls[$i+43]}" &
    responseCode45=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+44]}"` && checkCode $responseCode45 "${urls[$i+44]}" &
    responseCode46=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+45]}"` && checkCode $responseCode46 "${urls[$i+45]}" &
    responseCode47=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+46]}"` && checkCode $responseCode47 "${urls[$i+46]}" &
    responseCode48=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+47]}"` && checkCode $responseCode48 "${urls[$i+47]}" &
    responseCode49=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+48]}"` && checkCode $responseCode49 "${urls[$i+48]}" &
    responseCode50=`curl -L -m 10 -s -o /dev/null -w "%{http_code}" "${urls[$i+49]}"` && checkCode $responseCode50 "${urls[$i+49]}"
    wait
    echo "done $(($i+50)) out of $numoflines"
  done
  rest2=$(($numoflines % 50))
  if [ $rest2 -gt 9 ]; then
    speed1 $(($numoflines - $rest2))
  else
  finishRest
  fi
}

read -p 'Your file with links:' filePath
if [ -e $filePath ]; then
    read -p 'Choose speed (1-5):' speed
    if [ $speed -ge 1 -a $speed -le 5 ]; then
      echo "URL,Code" > "urls_codes.txt"
      `sort -u $filePath > "sorted_and_uniq.txt"`
      IFS= readarray -t urls < "sorted_and_uniq.txt"
      numoflines="${#urls[@]}"
      case $speed in
        1)
        speed1 0
        ;;
        2)
        speed2
        ;;
        3)
        speed3
        ;;
        4)
        speed4
        ;;
        5)
        speed5
        ;;
      esac
      echo "You can find 3 files in this directory: sorted_and_uniq.txt, urls_codes.txt and (if there were 404 codes, they are in) urls_with404.txt"
    else
      echo "Your input is wrong, enter one number from 1 to 5!"
    fi
  else
    echo "Can't find $filePath, try again!"
fi
