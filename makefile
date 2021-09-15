all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# Guess the number of files in the current directory \n" > README.md
	echo $$(date) >> README.md
	echo " \n "
	echo "Number of Lines in guessinggame.sh are: `wc -l guessinggame.sh | egrep -o "[0-9]+"`" >> README.md

clean:
	rm README.md
