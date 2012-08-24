#a simple if ( -o and -a could be used for "or" and "and"
if [ "$foo" = "bar" ]
then 
  #your code here
fi 

#a simple switch / case in shell script
case $foo in
   "bar") 
       print "bar"
       ;;
   "toto")
       print "toto"
       ;;
   *) #default
      print "default";;
esac

#read a file line by line
{
    read -r line
    while [ $? -eq 0 ]
    do 
       #do what you want with $line here
       ...
       
       read -r line
    done
} < $INPUT_FILE

#action on every file of a folder
for fic in `ls /home/foo/* 2>/dev/null`
do
   #action here
done

#uppercase
typeset -u upSTR="lowerString"

#date and time
DATE=`date +"%d/%m/%Y"` #date
HOUR=`date +"%H:%M:%S"` #time

#display string size
echo ${#string}

#write sqlplus multilines request
sqlplus user/user -s <<END
  SELECT * FROM FOO;
END
