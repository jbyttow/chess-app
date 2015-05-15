
class ChessGame
  @$inject: ['$scope'] 
  constructor: ($scope) ->
    $scope.name = 'Chess Game'

angular.module('chessApp').controller('chessController', ['$scope', ChessGame])
