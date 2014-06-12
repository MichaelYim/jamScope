Router.configure
  layoutTemplate: 'layout'

Router.map () ->
  @route 'home',
    path: '/'
    waitOn: ->
      Meteor.subscribe('users')
      Meteor.subscribe('instruments')


  @route 'search',
    path: 'musicians'
    waitOn: ->
      Meteor.subscribe('users')
      Meteor.subscribe('instruments')

  @route 'picture',
    path: 'picture'
    waitOn: ->
      Meteor.subscribe('users')
      Meteor.subscribe('instruments')

  @route 'notFound',
    path: '*'
    where: 'server'
    action: ->
      @response.statusCode = 404
      @response.end Handlebars.templates['404']()



