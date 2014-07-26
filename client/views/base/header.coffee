Template.header.rendered = ->
  Session.set("chatBoxArray", [])
  # @sessionArray = []

  setTimeout (->
    if !Meteor.user()
      Crater.overlay "introInfo"

  ), 5000





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