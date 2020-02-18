LATEST_FILE1="`pwd`/`ls -lt  | head -n 1 | awk '{print $9}'`"
command1="git add $LATEST_FILE1"
eval $command1

command2= git commit -m “ファイル更新”
command3= git push origin master
