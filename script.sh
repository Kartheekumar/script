file_creation=`seq -s ' ' 10`

for(( i=1;i<=10;i++ )); do unset content; for(( j=1;j<=$i;j++ )); do content="$content $j"; done; echo $content;echo $content > $i; done

for file in $file_creation ; do mv -v $file $file.txt; done

file_txt=`seq -f "%2G.txt" -s ' ' 10`
tar -cvf all_file.zip $file_txt 

(mkdir -v $HOME/test && cp all_file.zip $HOME/test/all_file.zip && cd $HOME/test/ && pwd && tar -xvf $HOME/test/all_file.zip)
