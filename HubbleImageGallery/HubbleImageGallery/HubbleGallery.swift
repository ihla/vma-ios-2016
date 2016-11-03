//
//  HubbleGallery.swift
//  CollectionViewDemo
//
//  Created by Lubos Ilcik on 01/11/15.
//  Copyright © 2015 Touch4IT. All rights reserved.
//

import UIKit

struct GalleryItem {
    let image: UIImage
    let name: String
}

struct HubbleGallery {
    let items = [
        GalleryItem(image: UIImage(named: "hubble1.png")!, name: "Celestial Fireworks"),
        GalleryItem(image: UIImage(named: "hubble2.jpg")!, name: "Stormy Seas in Sagittarius"),
        GalleryItem(image: UIImage(named: "hubble3.jpg")!, name: "Veil Nebula Supernova Remnant"),
        GalleryItem(image: UIImage(named: "hubble4.jpg")!, name: "Hubble Uncovering the Secrets of the Quintuplet Cluster"),
        GalleryItem(image: UIImage(named: "hubble5.jpg")!, name: "A Hubble Cosmic Couple"),
        GalleryItem(image: UIImage(named: "hubble6.jpg")!, name: "Hubble Peers into the Heart of a Galactic Maelstrom"),
        GalleryItem(image: UIImage(named: "hubble7.jpg")!, name: "Hubble Observes Galaxies' Evolution in Slow Motion"),
        GalleryItem(image: UIImage(named: "hubble8.jpg")!, name: "Hubble View: Smoke Ring for a Halo"),
        GalleryItem(image: UIImage(named: "hubble9.jpg")!, name: "Hubble Views 'Third Kind' of Galaxy"),
        GalleryItem(image: UIImage(named: "hubble10.jpg")!, name: "Deployment of the Hubble Space Telescope")
    ]
}
