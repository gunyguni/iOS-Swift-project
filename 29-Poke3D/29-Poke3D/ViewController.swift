//
//  ViewController.swift
//  29-Poke3D
//
//  Created by Keon Hee Park on 2022/04/21.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        sceneView.autoenablesDefaultLighting = true
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARImageTrackingConfiguration()
        
        if let imageToTrack = ARReferenceImage.referenceImages(inGroupNamed: "Pokemon Cards", bundle: Bundle.main) {
            configuration.trackingImages = imageToTrack
            
            configuration.maximumNumberOfTrackedImages = 1
            
            print("Images Successfully Added")
            
        }
        
        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }

    // MARK: - ARSCNViewDelegate

    
    // Override to create and configure nodes for anchors added to the view's session.
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        let node = SCNNode()
        
        guard let imageAnchor = anchor as? ARImageAnchor else {return nil}
        
        // 캡쳐한 이미지 앵커의 실제 사이즈를 예측해서 가져온다. 그 사이즈대로 새로운 plain을 만든다.
        let plane = SCNPlane(width: imageAnchor.referenceImage.physicalSize.width, height: imageAnchor.referenceImage.physicalSize.height)
        
        plane.firstMaterial?.diffuse.contents = UIColor(white: 1.0, alpha: 0.5)
        let planeNode = SCNNode(geometry: plane)
        
        // Default 2D plane은 항상 바닥과 수직적으로 만들어진다(i.e. 서있다). 따라서 수평 plane을 만들려면 (i.e. 만들어지는 2d 플레인을 눕히려면) 90도 꺾어주자
        planeNode.eulerAngles.x = -.pi / 2
        
        node.addChildNode(planeNode)
        
        
        if let pokeScene = SCNScene(named: "art.scnassets/Eevee_Collada.scn") {
            
            if let pokeNode = pokeScene.rootNode.childNodes.first {
                pokeNode.eulerAngles.x = .pi / 2
                planeNode.addChildNode(pokeNode)
            }
        }
        
        return node
    }

}
