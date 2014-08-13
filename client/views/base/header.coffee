Template.header.rendered = ->
  Session.set("chatBoxArray", [])
  Session.setDefault("introSeen", false)


  Deps.autorun ->
    if Meteor.user()
      if Meteor.user()
        console.log "running stuff from header"
        if Meteor.user().profile.firstLogin == true
          Router.go('edit_form')
          n = noty({text: 'Welcome! Please tell us about yourself as a musician!', type: 'success', layout:'top', timeout: 10000})
          currentTarget = Meteor.user()._id
          Meteor.users.update({_id: currentTarget}, {$set:{ "profile.firstLogin":false}})



Template.header.helpers
  activeRouteClass: () ->
    args = Array.prototype.slice.call(arguments, 0)
    args.pop()

    active = _.any args, (name) ->
      Router.current() and Router.current().route.name is name

    active and 'active'

Template.header.events
  "click .nav-map-button": (e) ->
    Crater.dismissOverlay('.crater-overlay')

  "click .nav-search-button": (e) ->
    Crater.dismissOverlay('.crater-overlay')
