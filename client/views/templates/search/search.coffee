Template.search.rendered = ->
  Session.set("selectedInstrument", "all")

Template.search.events
  'change #e1': (e) ->
    e.preventDefault()
    select = $('#e1').val()
    Session.set("selectedInstrument", select)







