APTPREFIX = $(DESTDIR)/etc/apt/trusted.gpg.d

all:

clean:
	rm andrewg-codesign.pub || true

$(APTPREFIX) :
	mkdir -p $@

install: $(APTPREFIX)
	wget -q https://andrewg.com/andrewg-codesign.pub -O andrewg-codesign.pub
	gpg --no-default-keyring --keyring=$(APTPREFIX)/andrewg-codesign.gpg --import andrewg-codesign.pub
