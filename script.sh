#!/bin/bash
echo Hello All!

dir=/home/useradmin/test

mkdir -p $dir/20{15..20}/{1..12}
touch $dir/20{15..20}/{1..12}/{001..003}.txt

echo -e {001..003} >> $dir/20{15..20}/{1..12}/{001..003}.txt
find $dir -name '.txt' -type f |
while read f
do
echo ${f##/} | sed 's/.[^.]*$//' > $f
done
