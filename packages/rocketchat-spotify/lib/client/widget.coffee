Template.registerHelper 'replace', (source, find, replace, option) ->
	if option.hash.regex is true
		find = new RegExp(find)
	return source.replace(find, replace)

Template.registerHelper 'match', (source, regex) ->
	return new RegExp(regex).test(source)

// Translates spotify template
Template.oembedBaseWidget.onCreated () ->
	if this.data?.parsedUrl?.host is 'open.spotify.com' and this.data?.meta?.ogAudio?
		this.data._overrideTemplate = 'oembedSpotifyWidget'
