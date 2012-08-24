#detect if the current user can launch a script
if  [ `whoami` != '<grantedUser>' ]
then
    #you can display a message here or log someting ...
    exit -1
fi

#your script continue here if you are <grantedUser>

