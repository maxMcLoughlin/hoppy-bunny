import SpriteKit

class GameScene: SKScene
{
    var hero: SKSpriteNode!
    override func didMove(to view: SKView)
    {
        /* Setup your scene here */
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        /* Called when a touch begins */
        
        //Apply vertical impulses
        hero.physicsBody?.applyImpulse(CGVector(dx: 0, dy: 300))
    }
    
    override func update(_ currentTime: CFTimeInterval)
    {
        /* Called before each frame is rendered */
        let velocityY = hero.physicsBody?.velocity.dy ?? 0
        
        if velocityY > 400
        {
            hero.physicsBody?.velocity.dy = 400
        }
        //Recursive node search for 'hero' (Child of rendered node)
        hero = self.childNode(withName: "//hero") as! SKSpriteNode
    }
}
