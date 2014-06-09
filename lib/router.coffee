Router.configure
  layoutTemplate: 'layout'

Router.map () ->
  @route 'home', path: '/'

  @route 'search', path: 'musicians'

  @route 'notFound',
    path: '*'
    where: 'server'
    action: ->
      @response.statusCode = 404
      @response.end Handlebars.templates['404']()

