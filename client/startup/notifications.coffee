Meteor.startup ->
	if Meteor.userId()
		Meteor.subscribe 'notifications', new Date()

Meteor.startup ->
	ChatNotification.find().observeChanges
		added: (id, data) ->
			switch data.t
				when 'mention'
					KonchatNotification.newMessage data.rn, data.msg

				when 'msg'
					KonchatNotification.newMessage data.rn, data.msg

				when 'invite'
					console.log 'user inveted to room'
