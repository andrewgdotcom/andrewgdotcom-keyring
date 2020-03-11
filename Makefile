APTPREFIX = $(DESTDIR)/etc/apt/trusted.gpg.d

all:

clean:

$(APTPREFIX) :
	mkdir -p $@

install: $(APTPREFIX)
	gpg --no-default-keyring --keyring=$(APTPREFIX)/andrewg-codesign.gpg --import andrewg-codesign.pub
