INPUT=$1
for i in `ls $INPUT`
do
  echo $i.markdown
  `pandoc -r textile -w markdown $i -o $i.markdown`
done
