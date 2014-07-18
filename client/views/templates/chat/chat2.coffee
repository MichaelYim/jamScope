Template.chat2.helpers
  thisUser: ->
    x = this.toString()
    y = Meteor.users.find(x).fetch()
    y[0]

  thisChat: ->
    x = this.toString()
    link = [Meteor.user()._id, x].sort()
    link = link[0].concat(link[1])
    object = Chatrooms.find({link: link}).fetch()
    object[0]
    # z = Chatrooms.find(link).fetch()
    # console.log z

  mine: ->
    this.owner == Meteor.user()._id

  picture: ->
    x = this.owner.toString()
    user = Meteor.users.find(x).fetch()
    user[0].profile.picturesquare

Template.chat2.events "click .msg-btn": (e) ->
  e.prevent()

