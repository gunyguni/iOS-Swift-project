//
//  ViewController.swift
//  23.SeeFood
//
//  Created by Keon Hee Park on 2022/04/18.
//

import UIKit
import CoreML
import Vision



class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        imagePicker.allowsEditing = false
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
         
        if let userPickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageView.image = userPickedImage
            
            guard let ciimage = CIImage(image: userPickedImage) else {
                fatalError("Couldnt convert uiimage to ciimage")
            }
                    
            detect(image: ciimage)
            
        }
        
        imagePicker.dismiss(animated: true)
        
    }
    
    func detect(image: CIImage) {
        // 1. 프로젝트에 추가한 .mlmodel 파일을 VNCoreMLModel 인스턴스로 로딩한다.
        guard let model = try? VNCoreMLModel(for: Inceptionv3().model) else {
            fatalError("Loading CoreML Model Failed")
        }
        
        // 2. request의 completion handler를 설정한다. request가 완료된 후 어떻게 처리할지, error 발생시 어떻게 할지 정의한다.
        let request = VNCoreMLRequest(model: model) { request, error in
            guard let results = request.results as? [VNClassificationObservation] else {
                fatalError("Model failed to process image")
            }
            
            if let firstResult = results.first {
                if firstResult.identifier.contains("hotdog") {
                    self.navigationItem.title = "Hotdog!"
                } else {
                    self.navigationItem.title = "Not Hotdog!"
                }
                
            }
        }
        
        // 3. Request의 handler를 정의한다. 여기에 우리가 사용할 ciImage를 넣어준다.
        let handler = VNImageRequestHandler(ciImage: image)
        
        // 4. handler를 통해서 request를 처리한다.
        do {
            try handler.perform([request])
        } catch {
            print(error)
        }
        
    }
    
    @IBAction func cameraTapped(_ sender: UIBarButtonItem) {
        present(imagePicker, animated: true, completion: nil)
    }
    
}

