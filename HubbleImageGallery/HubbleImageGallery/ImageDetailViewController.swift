//
//  ImageDetailViewController.swift
//  HubbleImageGallery
//
//  Created by Lubos Ilcik on 03/11/2016.
//  Copyright © 2016 Touch4IT. All rights reserved.
//

import UIKit

class ImageDetailViewController: UIViewController {
    
    var hubbleImage: UIImage?
    var hubbleTitle: String?

    @IBOutlet weak var hubbleImageView: UIImageView! {
        didSet {
            hubbleImageView.image = hubbleImage
        }
    }
    
    @IBOutlet weak var hubbleImageLabel: UILabel! {
        didSet {
            hubbleImageLabel.text = hubbleTitle
        }
    }

}
