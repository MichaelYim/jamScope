Template.edit_form.rendered = ->

  populator = Meteor.user().profile.instrumentsPlayed

  $("#e9").val(populator).select2()
  # Deps.autorun ->
  #   Session.set("dummypop",$("#e9").val())

Template.edit_form.helpers

  instrumentSelection: ->
    InstrumentList.find().fetch()

  dummypop: ->
    Meteor.user().profile.instrumentsPlayed
    # Session.get("dummypop")

Template.edit_form.events "submit form": (e) ->
  e.preventDefault()

  if !Meteor.user()
    throw new Meteor.Error("000", "You must be logged in");
  else

  $target = $(e.target)
  name = $target.find('[name=name]').val()
  current = Meteor.userId()

  updateInfo =
    "profile.name": $target.find("[name=name]").val()
    "profile.email": $target.find("[name=email]").val()
    "profile.aboutMe": $target.find("[name=aboutMe]").val()
    "profile.instrumentsPlayed": $("#e9").val()

  Meteor.users.update current,
    $set: updateInfo
































