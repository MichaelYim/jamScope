Accounts.onCreateUser (options, user) ->
  if options.profile
    options.profile.picture = "http://graph.facebook.com/" + user.services.facebook.id + "/picture/?type=large"
    user.profile = options.profile


    options.profile.aboutMe = null
    options.profile.email = null
    options.instrumentsPlayed = null
    options.instrumentsPlayedTemporary = null

  user
