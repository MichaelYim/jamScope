Router.configure
  layoutTemplate: 'layout'

Router.map () ->
  @route 'home',
    path: '/'
    waitOn: ->
      Meteor.subscribe('users')
      Meteor.subscribe('instruments')
      Meteor.subscribe('instrumentList')


  @route 'search',
    path: 'musicians'
    waitOn: ->
      Meteor.subscribe('users')
      Meteor.subscribe('instruments')
      Meteor.subscribe('instrumentList')

  @route 'edit_form',
    path: 'edit_profile'
    waitOn: ->
      Meteor.subscribe('users')
      Meteor.subscribe('instruments')
      Meteor.subscribe('instrumentList')

  @route 'notFound',
    path: '*'
    where: 'server'
    action: ->
      @response.statusCode = 404
      @response.end Handlebars.templates['404']()



