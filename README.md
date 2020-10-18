# append-spreads.sh
A simple Imagemagick shell script to combine a series of images into double-page spreads. Creates the folder `spreads` in the folder it is run in. Takes in as input the first page of the first spread, and the first page of the last spread. Zero-padding the two input numbers is not necessary, but your input files should be.

This was created for use with manga, so spreads are combined in reverse from a standard book. The two parts that should be switched for spreads to be combined in a left-to-right fashion are ` $(printf "%02g" "$a").png` and `$i.png` on line 10.
