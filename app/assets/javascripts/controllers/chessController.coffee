
class ChessGame
  @$inject: ['$scope'] 
  constructor: ($scope) ->
    $scope.name = 'Chess Game'
    $scope.gameState = {
      playerTurn: 0
      player1: {
        userName: 'jbyttow'
      }
      player2: {
        userName: 'dbyttow'
      }
      boardState: {
        "1a": '+2'
        '1b': '+3'
        '1c': '+4'
        '1d': '+5'
        '1e': '+6'
        '1f': '+4'
        '1g': '+3'
        '1h': '+2'
        '2a': '+1'
        '2b': '+1'
        '2c': '+1'
        '2d': '+1'
        '2e': '+1'
        '2f': '+1'
        '2g': '+1'
        '2h': '+1'
        '7a': '-1'
        '7b': '-1'
        '7c': '-1'
        '7d': '-1'
        '7e': '-1'
        '7f': '-1'
        '7g': '-1'
        '7h': '-1'
        '8a': '-2'
        '8b': '-3'
        '8c': '-4'
        '8d': '-5'
        '8e': '-6'
        '8f': '-4'
        '8g': '-3'
        '8h': '-2'
      } 
    }

angular.module('chessApp').controller('chessController', ['$scope', ChessGame])
