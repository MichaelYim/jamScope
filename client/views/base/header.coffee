Template.header.rendered = ->
  Session.set("chatBoxArray", [])
  # @sessionArray = []
  if !Meteor.user()
    Crater.overlay "introInfo"



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