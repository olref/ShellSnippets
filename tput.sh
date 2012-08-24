#some useful functions and tips for tput UI

#function to get a keystroke (no press return key needed)
getc()
{
   stty raw #don't read terminal line by line but char by char
   tmp=`dd bs=1 count=1 2>/dev/null`
   eval $1='$tmp'
   stty cooked
}

#wait a user keystroke to continue
pause() 
{
   echo "<Your message or nothing>\c"
   read wait
}

#get a string and return where you should move the cursor to center 
#this string on the screen
#param :
#  1. string
middleIndex()
{
   screensize=`tput cols` #screensize
   screenMid=$(( $screensize / 2 )) #index of the middle
   stringSize=${#1}

   #compute first char position
   firstChar=$(( $screenMid - ($stringSize / 2)  ))

   if [ $firstChar -gt 0 ]
   then
      return $firstChar
   else
      return 0
   fi
}

#add spaces at end of a string to fill n characters
#Param :
#    1 : string
#    2 : output size
padString() {
    printf "%-${2}s" $1
}

tput clear      # clear the screen
tput cub $N     # Move N characters left
tput cuf $N     # Move N characters right
tput cub1       # move left 1 space
tput cuf1       # move right 1 space
tput cuu $N     # move N line up
tput cud $N     # move N line bottom
tput rev        # reverse display
tput sgr0       # back to normal display
tput home       # move cursor top left
tput smul       # underline display
tput rmul       # disable underline
tput cup $X $Y  # move cursor to screen location X,Y

