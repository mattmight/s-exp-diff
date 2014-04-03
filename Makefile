all: s-diff


s-diff: s-diff.rkt
	raco exe -o s-diff s-diff.rkt

install: s-diff
	cp -v s-diff ~/bin/

install-global: s-diff
	cp -v s-diff /usr/local/bin/

clean:
	rm -rfv s-diff


