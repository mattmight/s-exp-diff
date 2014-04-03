all: sdiff


sdiff: sdiff.rkt
	raco exe -o sdiff sdiff.rkt

install:
	cp -v sdiff ~/bin/

clean:
	rm -rfv sdiff


