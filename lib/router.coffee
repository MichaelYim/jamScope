Router.configure
  layoutTemplate: 'layout'

Router.map () ->
  @route 'home', path: '/'

Router.map () ->
  @route 'search', path: 'musicians'
