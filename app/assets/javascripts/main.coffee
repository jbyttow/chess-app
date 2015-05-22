#= require_self
#= require_tree ./models
#= require_tree ./services
#= require_tree ./directives
#= require_tree ./controllers

app = angular.module('chessApp', ['ngRoute', 'templates'])

window.chessApp = {}

app.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.when('/', { 
    templateUrl: 'index.html'
    controller: 'chessController'
  })
])
