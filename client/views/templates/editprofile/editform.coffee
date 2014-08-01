Template.edit_form.rendered = ->
  Crater.dismissOverlay('.crater-overlay')
  if Meteor.user().profile.instrumentsPlayed == null
    populator = [""]
  else
    populator = Meteor.user().profile.instrumentsPlayed.sort()

  $("#e9").val(populator).select2({maximumSelectionSize: 6})

  currentTarget = Meteor.userId()
  updateInfo =
    "profile.instrumentsPlayedTemporary": populator
  Meteor.call 'updateThis' ,updateInfo, currentTarget, (error, result) ->

Template.edit_form.helpers
  instrumentSelection: ->
    InstrumentList.find()

  addIndex:  ->
    all = Meteor.user().profile.instrumentsPlayedTemporary
    _.map all, (val, index) ->
      index: index
      value: val

Template.edit_form.events "change #e9": (e) ->
  console.log $("#e9").val()

  currentTarget = Meteor.userId()
  updateInfo =
    if $("#e9").val() == null
      "profile.instrumentsPlayedTemporary":[]
    else
      "profile.instrumentsPlayedTemporary":$("#e9").val().sort()

  Meteor.call 'updateThis', updateInfo, currentTarget, (error, result) ->

Template.edit_form.events "submit form": (e) ->
  e.preventDefault()

  if !Meteor.user()
    throw new Meteor.Error("000", "You must be logged in")
  else

  $target = $(e.target)
  name = $target.find('[name=name]').val()
  currentTarget = Meteor.userId()

  if $("#e9").val() == null
    updateInfo =
      "profile.name": $target.find("[name=name]").val()
      "profile.email": $target.find("[name=email]").val()
      "profile.aboutMe": $target.find("[name=aboutMe]").val()
      "profile.favoriteArtists": $target.find("[name=favoriteArtists]").val()
      "profile.instrumentsPlayed": []
      "profile.video1": $target.find("[name=video1]").val()
      "profile.video2": $target.find("[name=video2]").val()


  else
    updateInfo =
      "profile.name": $target.find("[name=name]").val()
      "profile.email": $target.find("[name=email]").val()
      "profile.aboutMe": $target.find("[name=aboutMe]").val()
      "profile.favoriteArtists": $target.find("[name=favoriteArtists]").val()
      "profile.instrumentsPlayed": $("#e9").val().sort()
      "profile.video1": $target.find("[name=video1]").val()
      "profile.video2": $target.find("[name=video2]").val()

    console.log updateInfo
  Meteor.call 'updateThis', updateInfo, currentTarget, (error, result) ->

  Meteor.call "deleteInstrumentsInCollection", (err, response) ->
    console.log(response)

  Router.go("home")
  n = noty({text: 'Your profile has been updated. Click on the map to mark your location!', type: 'error', layout:'center', timeout: 6500})


  if $("#e9").val() == null
      updateList = []
  else
    updateList = $("#e9").val().sort()
    for i in [0...updateList.length]
      newName =  updateList[i]
      newLevel = $target.find("[name=#{[i]}]").val()
      newTypeId = InstrumentList.findOne({name:newName})._id

      insertInfo =
        type: newName,
        typeId: newTypeId,
        owner: currentTarget,
        level: newLevel,

      Meteor.call "insertInstrument", insertInfo, (error,result) ->



































