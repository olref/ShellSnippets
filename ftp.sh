#create ftp command file
echo "user $userftp $pwdftp" > $cmdftp
echo "prompt off" >> $cmdftp
echo "passive" >> $cmdftp
echo "binary" >> $cmdftp
echo "cd $DEST_PATH" >> $cmdftp
echo "lcd $LOCAL_PATH" >> $cmdftp
echo "send $FILENAME" >> $cmdftp
echo "quit" >> $cmdftp

#run ftp
ftp -inv $ipaddr < $cmdftp
