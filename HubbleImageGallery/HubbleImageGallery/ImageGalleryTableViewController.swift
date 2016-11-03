//
//  ImageGalleryTableViewController.swift
//  HubbleImageGallery
//
//  Created by Lubos Ilcik on 03/11/2016.
//  Copyright © 2016 Touch4IT. All rights reserved.
//

import UIKit

class ImageGalleryTableViewController: UITableViewController {

    private let imageGallery = HubbleGallery()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = CGFloat(80)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageGallery.items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "galleryImageCell", for: indexPath) as! ImageGalleryTableViewCell

        let item = imageGallery.items[indexPath.row]
        cell.hubbleImageView.image = item.image
        cell.imageTitleLabel.text = item.name

        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let targetVC = segue.destination as? ImageDetailViewController {
            guard let selectedRow = tableView.indexPathForSelectedRow else { return }
            let item = imageGallery.items[selectedRow.row]
            targetVC.hubbleImage = item.image
            targetVC.hubbleTitle = item.name
        }
    }

}
