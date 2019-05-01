//
//  PaintingViewController.swift
//  ArtGallery
//
//  Created by Pat on 4/30/19.
//  Copyright © 2019 putergeek. All rights reserved.
//

import UIKit

class PaintingViewController: UIViewController, UITableViewDataSource, PaintingTableViewCellDelegate, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        
        switch model.paintings[indexPath.row].isLiked {
        case true:
            cell.likedButton.setTitle("Like", for: .normal)
            model.paintings[indexPath.row].isLiked = false
        case false:
            cell.likedButton.setTitle("Unlike", for: .normal)
            model.paintings[indexPath.row].isLiked = true
        }
    }
    /*
    var newVar : String?  //Allocating the memory in the RAM & setting information to nil (nothing but a placeholder)
    var otherNewVar : String? = "String" //Allocating the memory in the RAM & setting information to "String"
    
    newLabel.text = newVar! <--- crashes because there is no info, and you have told the processor that if there is no info, to crash.
     newLabel.text = newVar? ?? "Hello" <--- if newVar value is equal to nil, assign it the value given after the '??'
use '!' when wanting to force a crash (if your app relies on this optional), and '?' when you want it to have a default value & not crash.
 */
    let model = Model()
    @IBOutlet weak var galleryTableView: UITableView!
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        self.galleryTableView.reloadData()
        model.loadPaintingsFromAssets()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
            galleryTableView.dataSource = self
        }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.model.paintings.count
    }
    
    
    //for i in self.paintingController.paintings.count{
    //}
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "GalleryCell", for: indexPath) as! PaintingTableViewCell
        cell.paintingImage.image = self.model.paintings[indexPath.row].image
        
        switch self.model.paintings[indexPath.row].isLiked{
        case false:
            cell.likedButton.setTitle("Like", for: .normal)
        case true:
            cell.likedButton.setTitle("Unlike", for: .normal)
        }
        cell.delegate = self
        
        return cell
    }
    
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


