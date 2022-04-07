//
//  DetailVC.swift
//  SimpsonBook
//
//  Created by Burak Karagül on 12.01.2022.
//

import UIKit

class DetailVC: UIViewController {
    @IBOutlet var imageView: UIImageView!

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedSimpson:Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text=selectedSimpson?.name
        jobLabel.text=selectedSimpson?.job
        imageView.image=selectedSimpson?.image
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
