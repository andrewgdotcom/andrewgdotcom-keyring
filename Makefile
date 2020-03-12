APTPREFIX = $(DESTDIR)/etc/apt/trusted.gpg.d

all:

clean:

$(APTPREFIX) :
	mkdir -p $@

install: $(APTPREFIX)
	wget -q https://andrewg.com/andrewg-codesign.pub -O $(APTPREFIX)/andrewg-codesign.asc
