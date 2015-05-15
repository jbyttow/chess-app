#= require_self
#= require_tree ./services
#= require_tree ./directives
#= require_tree ./controllers

app = angular.module('chessApp', ['ngRoute', 'templates'])

app.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.when('/', { 
    templateUrl: 'index.html'
    controller: 'chessController'
  })
])
