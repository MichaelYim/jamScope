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
    options.profile.fans = 0
    options.profile.following = 0
    options.profile.video1 = null
    options.profile.video2 = null
    options.profile.favoriteArtists = null

  user


