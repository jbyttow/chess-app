
class BoardSquare  
  constructor: (colorIndex, @width) ->
    @color = if colorIndex == 0 then 'white' else 'black'

class ChessBoard
  constructor: () ->

  initialize: () ->
    @grid = [];
    for i in [0..7]
      columns = []
      for j in [0..7]
        columns[j] = new BoardSquare(j % 2, 20)
      @grid[i] = columns

  update: (tFrame)->

  draw: (tFrame)->


class GameService
  constructor:(@renderService) -> 
    @chessBoard = new ChessBoard()

  initialize: (@canvas) ->
    console.log $(@canvas).width()
    @chessBoard.initialize()

    @renderService.addDrawable @chessBoard
    

  update: (tFrame) ->
    @chessBoard.update()

    


angular.module('chessApp').factory "gameService", ["renderService", (renderService)->
  new GameService(renderService)
] 