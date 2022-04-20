//
//  ViewController.swift
//  27.ARDicee
//
//  Created by Keon Hee Park on 2022/04/20.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    var diceArray = [SCNNode]()
    
    @IBOutlet var sceneView: ARSCNView!
    
    
    //MARK: - App Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints]
        // Set the view's delegate
        sceneView.delegate = self
        
//        // 1. SCNObject를 생성 (i.e. AR로 그려질 물체의 형상을 정의)
////        let cube = SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0.01)
//
//        let sphere = SCNSphere(radius: 0.2)
//
//        // 2. SCNObject의 특성 (이 예시에선 색상)을 정의
//        let material = SCNMaterial()
//        material.diffuse.contents = UIImage(named: "art.scnassets/27-8k_moon.jpeg")
//        sphere.materials = [material]
//
//        // 3. SCNObject가 위치할 3D 좌표를 정하기 (
//        let node = SCNNode()
//        node.position = SCNVector3(x: 0, y: 0.1, z: -0.5)
//        node.geometry = sphere
//
//        // 4. 설정이 끝난 물체를 sceneView에 추가하기
//        sceneView.scene.rootNode.addChildNode(node)
        
        
        
        // default 그림자 추가 (Optional)
        sceneView.autoenablesDefaultLighting = true
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        configuration.planeDetection = .horizontal
        
        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
    
    
    //MARK: - Dice Rendering Methods
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let touchLocation = touch.location(in: sceneView)
            
            if let query = sceneView.raycastQuery(from: touchLocation, allowing: .estimatedPlane, alignment: .horizontal) {
                let results = sceneView.session.raycast(query)
                
                if let hitResult = results.first {
                    addDice(atLocation: hitResult)
                }
            }
        }
    }
    
    func addDice(atLocation location: ARRaycastResult) {
        // Create a new scene
        let diceScene = SCNScene(named: "art.scnassets/diceCollada.scn")!
        
        if let diceNode = diceScene.rootNode.childNode(withName: "Dice", recursively: true) {
            diceNode.position = SCNVector3(
                x: location.worldTransform.columns.3.x,
                y: location.worldTransform.columns.3.y + diceNode.boundingSphere.radius,
                z: location.worldTransform.columns.3.z
            )
            
            diceArray.append(diceNode)
            // Set the scene to the view
            sceneView.scene.rootNode.addChildNode(diceNode)
            
            roll(dice: diceNode)
            
        }
    }
    
    func rollAll() {
        if !diceArray.isEmpty {
            for dice in diceArray {
                roll(dice: dice)
            }
        }
    }
    
    func roll(dice: SCNNode) {
        let randomX = Float(arc4random_uniform(4) + 1) * (Float.pi/2)
        let randomZ = Float(arc4random_uniform(4) + 1) * (Float.pi/2)
        
        dice.runAction(SCNAction.rotateBy(
            x: CGFloat(randomX * 5),
            y: 0,
            z: CGFloat(randomZ * 5),
            duration: 0.5)
        )
    }
    
    
    @IBAction func rollAgain(_ sender: UIBarButtonItem) {
        rollAll()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        rollAll()
    }
    
    @IBAction func removeAllDice(_ sender: UIBarButtonItem) {
        if !diceArray.isEmpty {
            for dice in diceArray {
                dice.removeFromParentNode()
            }
        }
    }
    
    
    

    // MARK: - ARSCNViewDelegate Methods
    
    func renderer(_ renderer: SCNSceneRenderer, didAdd node: SCNNode, for anchor: ARAnchor) {
        
        guard let planeAnchor = anchor as? ARPlaneAnchor else {return}

        
        let plane = SCNPlane(width: CGFloat(planeAnchor.extent.x), height: CGFloat(planeAnchor.extent.z))

        let planeNode = SCNNode()
        planeNode.position = SCNVector3(x: planeAnchor.center.x, y: 0, z: planeAnchor.center.z)
        planeNode.transform = SCNMatrix4MakeRotation(-Float.pi/2, 1, 0, 0)

        let gridMaterial = SCNMaterial()
        gridMaterial.diffuse.contents = UIImage(named: "art.scnassets/grid.png")
        plane.materials = [gridMaterial]

        planeNode.geometry = plane

        node.addChildNode(planeNode)
        
    }
    
    
}
