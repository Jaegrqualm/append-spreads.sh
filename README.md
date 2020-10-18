# append-spreads.sh
A simple Imagemagick shell script to combine a series of images into double-page spreads. 

This was created for use with manga, so spreads are combined in reverse from a standard book. It's a simple enough script that didn't take me long to write, so it should be easy enough for anyone to find the correct variables to flip if they need this for any other purpose.

If there is anyone that doesn't find it that simple, the two parts that should be switched for spreads to be left-to-right are ` $(printf "%02g" "$a").png` and `$i.png` on line 10.
