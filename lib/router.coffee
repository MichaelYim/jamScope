Router.configure
  layoutTemplate: 'layout'
  loadingTemplate: 'loading',
  notFoundTemplate: 'notFoundPage',
  waitOn: ->
    [
      Meteor.subscribe 'users'
    ]

Router.map () ->
  @route 'home',
    path: '/'

    waitOn: ->
      [
        Meteor.subscribe('users')
        Meteor.subscribe('instruments')
        Meteor.subscribe('instrumentList')

        Meteor.subscribe('chatrooms')
      ]

  @route 'search',
    path: 'musicians'
    waitOn: ->
      [
        Meteor.subscribe('users')
        Meteor.subscribe('instruments')
        Meteor.subscribe('instrumentList')
        Meteor.subscribe('chatrooms')

      ]


  @route 'edit_form',
    path: 'edit_profile'
    waitOn: ->
      [
        Meteor.subscribe('instruments')
        Meteor.subscribe('instrumentList')
      ]
    data: ->
      Meteor.user()

  # @route 'notFound',
  #   path: '*'
  #   where: 'server'
  #   action: ->
  #     [
  #       @response.statusCode = 404
  #       @response.end Handlebars.templates['404']()
  #     ]
Router.onBeforeAction("loading")


