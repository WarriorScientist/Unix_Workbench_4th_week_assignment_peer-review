README.md:
	touch README.md

	echo "This is the readme file for the guessinggame.sh script.\n" > README.md

	echo "The guessinggame.sh script has $(shell wc -l < guessinggame.sh) lines of code.\n" >> README.md
	echo "The Makefile was created $(shell stat -f %SB guessinggame.sh).\n" >> README.md
