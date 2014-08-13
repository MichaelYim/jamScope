Template.search.rendered = ->
  Session.set("selectedInstrument", "all")
  $("html, body").scrollTop(0)

Template.search.events
  'change #e1': (e) ->
    e.preventDefault()
    select = $('#e1').val()
    Session.set("selectedInstrument", select)







