Template.edit_form.rendered = ->
  if Meteor.user().profile.instrumentsPlayed == null
    populator = [""]
  else
    populator = Meteor.user().profile.instrumentsPlayed.sort()

  $("#e9").val(populator).select2()

  current = Meteor.userId()

  updateTemporary =
    "profile.instrumentsPlayedTemporary": populator

  Meteor.users.update current,
    $set:updateTemporary


Template.edit_form.helpers

  instrumentSelection: ->
    InstrumentList.find().fetch()

  addIndex:  ->
    all = Meteor.user().profile.instrumentsPlayedTemporary
    _.map all, (val, index) ->
      index: index
      value: val

Template.edit_form.events "change #e9": (e) ->
  console.log $("#e9").val()

  current = Meteor.userId()
  updateTemporary =
    if $("#e9").val() == null
      "profile.instrumentsPlayedTemporary":[]
    else
      "profile.instrumentsPlayedTemporary":$("#e9").val().sort()


  Meteor.users.update current,
    $set:updateTemporary




Template.edit_form.events "submit form": (e) ->
  e.preventDefault()

  if !Meteor.user()
    throw new Meteor.Error("000", "You must be logged in")
  else

  $target = $(e.target)
  name = $target.find('[name=name]').val()
  current = Meteor.userId()

  if $("#e9").val() == null
    updateInfo =
      "profile.name": $target.find("[name=name]").val()
      "profile.email": $target.find("[name=email]").val()
      "profile.aboutMe": $target.find("[name=aboutMe]").val()
      "profile.instrumentsPlayed": []

  else
    updateInfo =
      "profile.name": $target.find("[name=name]").val()
      "profile.email": $target.find("[name=email]").val()
      "profile.aboutMe": $target.find("[name=aboutMe]").val()
      "profile.instrumentsPlayed": $("#e9").val().sort()



  Meteor.users.update current,
    $set: updateInfo

  Meteor.call "deleteInstrumentsInCollection", (err, response) ->
    console.log(response)


  if $("#e9").val() == null
      updateList = []
  else
    updateList = $("#e9").val().sort()
    for i in [0...updateList.length]
      newName =  updateList[i]
      newLevel = $target.find("[name=#{[i]}]").val()
      newTypeId = InstrumentList.findOne({name:newName})._id
      Instruments.insert({
        type: newName,
        typeId: newTypeId,
        owner: current,
        level: newLevel,
      })




































