//
//  ViewController.swift
//  URLSessionDemo
//
//  Created by Lubos Ilcik on 16/11/2016.
//  Copyright © 2016 Touch4IT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let url = URL(string: "http://www.jpl.nasa.gov/spaceimages/images/largesize/PIA21202_hires.jpg")
    
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadImageAsync()
        
    }
    
    // POZOR: ZLÉ RIEŠENIE!!!! NESŤAHOVAŤ DATA NA MAIN THREADE!
    private func loadImage() {
        
        guard let url = url else { return }
        guard let imageData = try? Data(contentsOf: url) else { return }
        image.image = UIImage(data: imageData)
    }
    
    
    private func loadImageAsync() {

        guard let url = url else { return }

        let urlSession = URLSession.shared
        let dataTask = urlSession.dataTask(with: url) { data, response, error in
            
            guard let data = data else { return }
            
            // POZOR: UI nepoužívať z background threadu!
            
            
            DispatchQueue.main.async {
                self.image.image = UIImage(data: data)
            }
            
        }
        dataTask.resume()
    
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

