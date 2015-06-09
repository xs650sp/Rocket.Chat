Template.appLayout.helpers

	rooms: ->
		console.log 'appLayout.helpers.rooms' if window.rocketDebug
		return ChatRoom.find {}

	flexOpened: ->
		return 'flex-opened' if Session.equals('flexOpened', true)

Template.appLayout.rendered = ->
	$('html').addClass("noscroll").removeClass "scroll"
