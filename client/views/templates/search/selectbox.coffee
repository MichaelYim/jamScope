Template.selectbox.rendered = ->
  $("#e1").select2()

Template.selectbox.helpers
  instrumentSelection: ->
    InstrumentList.find().fetch()