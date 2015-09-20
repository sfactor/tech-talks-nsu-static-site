for i in `seq 1 50`;
do
  mkdir $i
  touch $i/index.html.erb
  echo "---" > $i/index.html.erb
  echo "layout: lecture" >> $i/index.html.erb
  echo "lecture_id: $i" >> $i/index.html.erb
  echo "---" >> $i/index.html.erb
done  
