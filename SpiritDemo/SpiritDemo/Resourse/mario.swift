// ---------------------------------------
// Sprite definitions for 'mario'
// Generated with TexturePacker 4.4.0
//
// http://www.codeandweb.com/texturepacker
// ---------------------------------------

import SpriteKit


class mario {

    // sprite names
    let ALLOW_WALKLEFT  = "allow_walkLeft"
    let ALLOW_WALKRIGHT = "allow_walkRight"


    // load texture atlas
    let textureAtlas = SKTextureAtlas(named: "mario")


    // individual texture objects
    func allow_walkLeft() -> SKTexture  { return textureAtlas.textureNamed(ALLOW_WALKLEFT) }
    func allow_walkRight() -> SKTexture { return textureAtlas.textureNamed(ALLOW_WALKRIGHT) }

}
