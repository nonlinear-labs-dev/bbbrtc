.PHONY: all
all: bbbrtc install

bbbrtc: bbbrtc.c
	$(CXX) bbbrtc.c -o bbbrtc
	chmod +x bbbrtc

.PHONY: install
install: bbbrtc
	mkdir -p $(DESTDIR)/usr/sbin
	install bbbrtc $(DESTDIR)/usr/sbin/
	install bbb-long-reset $(DESTDIR)/usr/sbin/

.PHONY: clean
clean:
	rm -f bbbrtc
