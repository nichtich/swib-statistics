#!/bin/bash

if ! which pup &> /dev/null; then
	echo Please install https://github.com/ericchiang/pup
    exit 1
fi

function names {
    curl -s "$1" | pup "$2" | \
      perl -ple 's/^\s+|\s+$//g; s/\s*,\s*/\n/g' | sort
}

names http://www.swib09.de/biographien.html 'h3 text{}' > swib09.csv
names http://swib.org/swib10/biographien.html 'h3 text{}' > swib10.csv
names http://swib.org/swib11/biographien.html 'h3 text{}' > swib11.csv
names http://swib.org/swib12/speakers.php 'h3 text{}' > swib12.csv
names http://swib.org/swib13/speakers.php 'h3 text{}' > swib13.csv
names http://swib.org/swib14/speakers.php 'h3 text{}' > swib14.csv
names http://swib.org/swib15/speakers.html 'h2 text{}' > swib15.csv
names http://swib.org/swib16/speakers.html 'h2 text{}' > swib16.csv
names http://swib.org/swib17/speakers.html 'h2 text{}' > swib17.csv
