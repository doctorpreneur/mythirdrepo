		
README.md:
	touch README.md

	printf "# Title of project: my third repo\n\n" > README.MD
	printf "Generated on: " >> README.md
	date >> README.md
	echo >> README.md	
	printf "Number of lines of code generated: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md		

clean:
	rm README.md


