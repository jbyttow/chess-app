
class TouchService
  constructor: ()-> 
    @listeners = []
  initialize: (@canvas)->
    $(@canvas).on 'mousedown', @onDown
    $(@canvas).on 'mouseup', @onUp
    $(@canvas).on 'mousemove', @onMove
    $(@canvas).on 'mouseleave', @onLeave


  onDown: (e)=>
    pos = @translateCoordinates @canvas, e
    l.onDown pos for l in @listeners
  onUp: (e)=>
    pos = @translateCoordinates @canvas, e
    l.onUp pos for l in @listeners
  onMove: (e)=>
    pos = @translateCoordinates @canvas, e
    l.onMove pos for l in @listeners
  onLeave: (e)=>
    pos = @translateCoordinates @canvas, e
    l.onLeave pos for l in @listeners

  translateCoordinates: (canvas, e)->
    e.preventDefault()
    rect = @canvas.getBoundingClientRect()

    if e.originalEvent.touches
      return {
        x: e.originalEvent.touches[0].pageX - rect.left
        y: e.originalEvent.touches[0].pageY - rect.top
      }
    else
      return {
        x: e.clientX - rect.left
        y: e.clientY - rect.top
      }

  subscribe: (l)->
    @listeners.push l
    


angular.module('chessApp').factory "touchService", [()->
  new TouchService()
] 
