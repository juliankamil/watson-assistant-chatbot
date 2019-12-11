GEM = watson-assistant-chatbot-0.1.3.gem

$(GEM):
	gem build watson-assistant-chatbot.gemspec

push:
	gem push $(GEM)

all: $(GEM)

clean:
	rm $(GEM)

