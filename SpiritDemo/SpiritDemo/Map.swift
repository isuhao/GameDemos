// ---------------------------------------
// Sprite definitions for 'map'
// Generated with TexturePacker 4.6.1
//
// http://www.codeandweb.com/texturepacker
// ---------------------------------------

import SpriteKit


class Map {

    // sprite names
    let BG           = "bg"
    let BUBBLE       = "bubble"
    let LESSON_GRAY  = "lesson_gray"
    let LESSON_LIGHT = "lesson_light"
    let LESSON_UNUSE = "lesson_unuse"
    let STAIR        = "stair"
    let STAR         = "star"
    let STARTNO      = "startno"


    // load texture atlas
    let textureAtlas = SKTextureAtlas(named: "map")


    // individual texture objects
    func bg() -> SKTexture           { return textureAtlas.textureNamed(BG) }
    func bubble() -> SKTexture       { return textureAtlas.textureNamed(BUBBLE) }
    func lesson_gray() -> SKTexture  { return textureAtlas.textureNamed(LESSON_GRAY) }
    func lesson_light() -> SKTexture { return textureAtlas.textureNamed(LESSON_LIGHT) }
    func lesson_unuse() -> SKTexture { return textureAtlas.textureNamed(LESSON_UNUSE) }
    func stair() -> SKTexture        { return textureAtlas.textureNamed(STAIR) }
    func star() -> SKTexture         { return textureAtlas.textureNamed(STAR) }
    func startno() -> SKTexture      { return textureAtlas.textureNamed(STARTNO) }

}
