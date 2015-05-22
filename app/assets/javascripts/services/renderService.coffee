
class RenderService
  constructor: ()-> 
    @drawables = []
  initialize: (@canvas)->
    @ctx = @canvas.getContext '2d'
    @viewPortWidth = $(@canvas).width()
    @viewportHeight = $(@canvas).height()

  addDrawable: (d)->
    @drawables.push d

  draw: (tFrame, data)->
    @ctx.clearRect 0, 0, @viewPortWidth, @viewportHeight;
    d.draw @ctx, tFrame for d in @drawables


angular.module('chessApp').factory "renderService", [()->
  new RenderService()
] 
