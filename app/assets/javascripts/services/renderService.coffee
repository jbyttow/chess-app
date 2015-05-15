
class RenderService
  constructor:() -> 
    @drawables = []
  initialize: (@canvas) ->

  addDrawable:(d) ->
    @drawables.push d

  draw: (tFrame) ->


angular.module('chessApp').factory "renderService", [()->
  new RenderService()
] 