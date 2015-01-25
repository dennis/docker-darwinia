.PHONY: all clean

all:
	mkdir d8.dk && git clone repos:d8.dk && cd d8.dk && jekyll build
	cp Dockerfile d8.dk
	rm d8.dk/_site/publish

clean:
	rm -rf d8.dk

