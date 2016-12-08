//
//  ViewController.swift
//  ImagePickerDemo
//
//  Created by Lubos Ilcik on 25/03/15.
//  Copyright (c) 2015 ITLearning. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Status Bar styling
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        // urobí biely status bar
        // treba však do Info.plist pridať "View controller-based status bar appearance" -> YES
        return .lightContent
    }
    
    // MARK: - Private vars
    
    private lazy var imagePicker: UIImagePickerController = {
        let picker = UIImagePickerController()
        picker.delegate = self
        return picker
    }()
    
    @IBOutlet fileprivate weak var imagePreview: UIImageView!
    
    // MARK: - IB Actions
    
    @IBAction private func choosePhotoFromLibrary(_ sender: UIBarButtonItem) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        
        /*
         prezentovanie na celú obrazovku nie je vhodné pre iPad
        presentViewController(imagePicker, animated: true, completion: nil)
        */
        // lepší spôsob je prezentovať picker v popover:
        imagePicker.modalPresentationStyle = .popover
        imagePicker.popoverPresentationController?.barButtonItem = sender
        present(imagePicker, animated: true, completion: nil)
        
    }

    @IBAction private func shootPhotoByCamera(_ sender: UIBarButtonItem) {
        
        // lepšie je overiť či hw má kameru
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
        
            imagePicker.allowsEditing = false
            imagePicker.sourceType = .camera
            imagePicker.cameraCaptureMode = .photo
            imagePicker.modalPresentationStyle = .fullScreen
            
            present(imagePicker, animated: true, completion: nil)
            
        } else {
            
            showAlert()
            
        }
        
    }
    
    // MARK: - Private func
    
    private func showAlert() {
        let alert = UIAlertController(title: "Chyba", message: "Vaše zariadenie nemá kameru.", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
        
    }
}

//MARK: UIImagePickerControllerDelegate

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let chosenImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        imagePreview.image = chosenImage
        
        // uloženie image do photos
        if (picker.sourceType == .camera) {
            UIImageWriteToSavedPhotosAlbum(chosenImage, nil, nil, nil);
        }
        
        // príklad zmeny rozmerov napr. pred odoslaním 
        let resizedImage = chosenImage.resizedImage(withTargetSize: CGSize(width: 400, height: 400))
        
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
}

