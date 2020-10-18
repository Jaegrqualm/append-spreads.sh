#/bin/sh

if [ ! -d ./spreads ]; then
	mkdir ./spreads;
fi

for i in $(seq -f "%02g" $1 2 $2 ) # first, iterate, last. last is the first page of the last spread. first and last could potentially be input $1 and $2 instead of hardcoded
do
	a=$((10#$i +1)) #the 10# is to force decimal mode, so as to not get an octal error. add one to the (zero padded) intake value and use it as part of a filename in the convert command
	convert $(printf "%02g" "$a").png $i.png -strip +append spreads/$i-$(printf "%02g" "$a").png # printf re-adds the zero padding to the other filename number. -strip removes png metadata(?) that causes consecutive runs on the same files to produce results with different checksums.
done
