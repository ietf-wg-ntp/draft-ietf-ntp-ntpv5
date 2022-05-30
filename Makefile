XML2RFC = xml2rfc
XML2RFC_OPTIONS =

XMLS := $(wildcard *.xml)
TXTS := $(patsubst %.xml,%.txt,$(XMLS))
HTMLS := $(patsubst %.xml,%.html,$(XMLS))

txt: $(TXTS)

html: $(HTMLS)

%.txt: %.xml
	$(XML2RFC) $(XML2RFC_OPTIONS) --text -o $@ $<

%.html: %.xml
	$(XML2RFC) $(XML2RFC_OPTIONS) --html -o $@ $<

clean:
	rm -f *.txt *.html
