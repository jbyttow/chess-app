
class chessApp.Drawable
  constructor: ()->
    @x = 0
    @y = 0
    @w = 0
    @h = 0

  hitTest: (pos, boundsIncrease)->
    return (
      pos.x >= @x - boundsIncrease && 
      pos.x <= @x + @w + boundsIncrease &&
      pos.y >= @y - boundsIncrease &&
      pos.y <= @y + @h + boundsIncrease 
    )

  draw: (tFrame)->
    console.log 'override draw method!'

class chessApp.Rectangle extends chessApp.Drawable
  constructor: (@color="#FFFFFF")->
  draw: (ctx)->
    ctx.fillStyle = @color
    ctx.fillRect @x, @y, @w, @h

class chessApp.Graphic extends chessApp.Drawable
  constructor: (@imgKey="")->
  draw: (ctx)->
    ctx.drawImage chessApp.AssetService.getImage(@imgKey), @x, @y, @w, @h

class chessApp.Text extends chessApp.Drawable
  constructor: (@text)->
  draw: (ctx)->
    ctx.font = "14px serif"
    ctx.textAlign = "center"
    ctx.fillStyle = @color
    ctx.fillText @text, @x, @y
