#creating 1 to 10 files
file_creation=`seq -s ' ' 10`
touch $file_creation
#adding content to file
for(( i=1;i<=10;i++ )); do unset content; for(( j=1;j<=$i;j++ )); do content="$content $j"; done; echo $content;echo $content > $i; done
#change extention to .txt
for file in $file_creation ; do mv -v $file $file.txt; done
#zip the files
file_txt=`seq -f "%2G.txt" -s ' ' 10`
tar -cvf all_file.zip $file_txt 
#copty the target location and unzip all files to target loacation
(mkdir -v $HOME/test && cp all_file.zip $HOME/test/all_file.zip && cd $HOME/test/ && pwd && tar -xvf $HOME/test/all_file.zip)
#push to github
git init
git add script.sh
git commit -m "script added through script"
git remote add origin https://github.com/Kartheekumar/script.git
git push -u origin master



