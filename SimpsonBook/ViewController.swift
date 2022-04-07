//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Burak Karagül on 12.01.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    
   
    

    @IBOutlet var tableView: UITableView!
  
    
    var chosenSimpson:Simpson?
    
    let homer = Simpson(simpsonName: "Homer", simpsonJob: "Nuclear Safety", simpsonImage: UIImage(named: "Homer")!)
    
    let marge = Simpson(simpsonName: "Marge", simpsonJob: "Housewife", simpsonImage: UIImage(named: "Marge")!)
    
    let bart = Simpson(simpsonName: "Bart", simpsonJob: "Student", simpsonImage: UIImage(named: "Bart")!)
    
    let lisa = Simpson(simpsonName: "Lisa", simpsonJob: "Student", simpsonImage: UIImage(named: "Lisa")!)
    
    let maggie = Simpson(simpsonName: "Maggie", simpsonJob: "Baby", simpsonImage: UIImage(named: "Maggie")!)
    
    
    var simpsonArray=[Simpson]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource=self
        tableView.delegate=self
        simpsonArray.append(homer)
        simpsonArray.append(marge)
        simpsonArray.append(bart)
        simpsonArray.append(lisa)
        simpsonArray.append(maggie)
        
      
    }


    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text=simpsonArray[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsonArray.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         chosenSimpson = simpsonArray[indexPath.row]
        self.performSegue(withIdentifier: "toDetailVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            let destinationVC = segue.destination as! DetailVC
            destinationVC.selectedSimpson=chosenSimpson
        }
    }
}

