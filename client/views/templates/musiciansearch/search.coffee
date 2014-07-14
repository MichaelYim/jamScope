Template.search.rendered = ->
  Session.set("selectedInstrument", "all")


#<----------search button jquery------->
# Template.search.events
#   'click #actual-search-button': (e) ->
#     e.preventDefault()
#     select = $('#e1').val()
#     Session.set("selectedInstrument", select)


# just for demo --------->

Template.search.events
  'change #e1': (e) ->
    select = $('#e1').val()
    Session.set("selectedInstrument", select)

