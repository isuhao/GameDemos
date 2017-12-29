// ---------------------------------------
// Sprite definitions for 'map'
// Generated with TexturePacker 4.6.1
//
// http://www.codeandweb.com/texturepacker
// ---------------------------------------

import SpriteKit


class MapTexture {

    // sprite names
    let BG                = "bg"
    let BUBBLE            = "bubble"
    let LESSON_GRAY       = "lesson_gray"
    let LESSON_LIGHT      = "lesson_light"
    let LESSON_UNUSE      = "lesson_unuse"
    let STAIR             = "stair"
    let STAIR_STIP        = "stair_stip"
    let STAR              = "star"
    let STARTNO           = "startno"
    let WATER_WATER_00000 = "water/water_00000"
    let WATER_WATER_00001 = "water/water_00001"
    let WATER_WATER_00002 = "water/water_00002"
    let WATER_WATER_00003 = "water/water_00003"
    let WATER_WATER_00004 = "water/water_00004"
    let WATER_WATER_00005 = "water/water_00005"
    let WATER_WATER_00006 = "water/water_00006"
    let WATER_WATER_00007 = "water/water_00007"
    let WATER_WATER_00008 = "water/water_00008"
    let WATER_WATER_00009 = "water/water_00009"


    // load texture atlas
    let textureAtlas = SKTextureAtlas(named: "map")


    // individual texture objects
    func bg() -> SKTexture                { return textureAtlas.textureNamed(BG) }
    func bubble() -> SKTexture            { return textureAtlas.textureNamed(BUBBLE) }
    func lesson_gray() -> SKTexture       { return textureAtlas.textureNamed(LESSON_GRAY) }
    func lesson_light() -> SKTexture      { return textureAtlas.textureNamed(LESSON_LIGHT) }
    func lesson_unuse() -> SKTexture      { return textureAtlas.textureNamed(LESSON_UNUSE) }
    func stair() -> SKTexture             { return textureAtlas.textureNamed(STAIR) }
    func stair_stip() -> SKTexture        { return textureAtlas.textureNamed(STAIR_STIP) }
    func star() -> SKTexture              { return textureAtlas.textureNamed(STAR) }
    func startno() -> SKTexture           { return textureAtlas.textureNamed(STARTNO) }
    func water_water_00000() -> SKTexture { return textureAtlas.textureNamed(WATER_WATER_00000) }
    func water_water_00001() -> SKTexture { return textureAtlas.textureNamed(WATER_WATER_00001) }
    func water_water_00002() -> SKTexture { return textureAtlas.textureNamed(WATER_WATER_00002) }
    func water_water_00003() -> SKTexture { return textureAtlas.textureNamed(WATER_WATER_00003) }
    func water_water_00004() -> SKTexture { return textureAtlas.textureNamed(WATER_WATER_00004) }
    func water_water_00005() -> SKTexture { return textureAtlas.textureNamed(WATER_WATER_00005) }
    func water_water_00006() -> SKTexture { return textureAtlas.textureNamed(WATER_WATER_00006) }
    func water_water_00007() -> SKTexture { return textureAtlas.textureNamed(WATER_WATER_00007) }
    func water_water_00008() -> SKTexture { return textureAtlas.textureNamed(WATER_WATER_00008) }
    func water_water_00009() -> SKTexture { return textureAtlas.textureNamed(WATER_WATER_00009) }


    // texture arrays for animations
    func water_water_() -> [SKTexture] {
        return [
            water_water_00000(),
            water_water_00001(),
            water_water_00002(),
            water_water_00003(),
            water_water_00004(),
            water_water_00005(),
            water_water_00006(),
            water_water_00007(),
            water_water_00008(),
            water_water_00009()
        ]
    }


}
