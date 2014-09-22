Meteor.startup ->
  $("html").attr "xmlns", "http://www.w3.org/1999/xhtml"
  $("html").attr "xmlns:fb", "http://ogp.me/ns/fb#"

# set session variables to empty (to configure intro popup and chat boxes open)
Template.header.rendered = ->
  Session.set("chatBoxArray", [])
  Session.setDefault("introSeen", false)

  Deps.autorun -> #popup notification for first login
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

Template.header.events #clicking any of the header buttons dismisses an overlay (if one exists)
  "click .nav-map-button": (e) ->
    Crater.dismissOverlay('.crater-overlay')

  "click .nav-search-button": (e) ->
    Crater.dismissOverlay('.crater-overlay')
