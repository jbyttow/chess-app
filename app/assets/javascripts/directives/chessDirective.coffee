app = angular.module 'chessApp'

app.directive "chessGame", ["gameService", "renderService", (gameService, renderService)->
  return {
    restrict: 'EA'
    replace: true
    template: '<canvas class="chessCanvas" width="500" height="500" style="border:1px solid #000000;"></canvas>'
    link: (data, el, attr) ->
      @canvas = el[0]
      gameService.initialize @canvas, data
      renderService.initialize @canvas, data

      gameLoop = (tFrame) ->
        gameService.update tFrame, data
        renderService.draw tFrame, data
        requestAnimationFrame gameLoop
      
      requestAnimationFrame gameLoop
  }
]
