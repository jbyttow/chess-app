
class chessApp.AssetService
  @assets: {}
  @initialize: ()->

  @getAndCacheImage: (url, cb)->
    key = url.substring(url.lastIndexOf("/") + 1, url.lastIndexOf("@"))
    if chessApp.AssetService.assets[key] then return chessApp.AssetService.assets[key]
    chessApp.AssetService.assets[key] = new Image()
    chessApp.AssetService.assets[key].onload = ()->
      if cb then return cb key
    
    chessApp.AssetService.assets[key].src = url

  @cacheImage: (url)->
    @getAndCacheImage url, null

  @getImage: (key)->
    if chessApp.AssetService.assets[key] then return chessApp.AssetService.assets[key] else return null
    
  
angular.module('chessApp').factory "assetService", [()->
  new chessApp.AssetService()
] 
