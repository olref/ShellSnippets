#sed tips

#add a new line after searched pattern
sed "s/<search_pattern>/&\n<newLine>/" input > output

#same sed for versions which 
#doesn't understand \n (for example on HP-UX)
#y/~/\n/; will replace ~ in replace string bye \n
sed "s/<search_pattern>/&~<newLine>/; y/~/\n/;" input > output
