Accounts.onCreateUser (options, user) ->
  if options.profile
    options.profile.picture = "http://graph.facebook.com/" + user.services.facebook.id + "/picture/?type=large"
    options.profile.picturesquare = "http://graph.facebook.com/" + user.services.facebook.id + "/picture/?type=square"
    user.profile = options.profile

    options.profile.aboutMe = null
    options.profile.email = null
    options.profile.instrumentsPlayed = []
    options.profile.instrumentsPlayedTemporary = []
    options.profile.lat = null
    options.profile.long = null

  user

