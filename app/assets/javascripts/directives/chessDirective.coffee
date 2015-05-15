app = angular.module 'chessApp'

app.directive "chessGame", ["gameService", "renderService", (gameService, renderService)->
  return {
    restrict: 'A'
    replace: true
    template: '<canvas class="chessCanvas" width="300" height="300" style="border:1px solid #000000;"></canvas>'
    link: (scope, el, attr) ->
      @canvas = el[0]
      @ctx = @canvas.getContext("2d")

      gameService.initialize @canvas
      renderService.initialize @ctx

      gameLoop = (tFrame) ->
        gameService.update tFrame
        renderService.draw tFrame
        requestAnimationFrame gameLoop
      
      requestAnimationFrame gameLoop
  }
]
