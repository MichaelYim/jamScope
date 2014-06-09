Template.search.rendered = ->
  Session.set("selectedInstrument", "all")


Template.search.events
  'click #actual-search-button': (e) ->
    e.preventDefault()
    select = $('#e1').val()
    Session.set("selectedInstrument", select)




