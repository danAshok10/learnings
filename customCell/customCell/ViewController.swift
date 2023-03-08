//
//  ViewController.swift
//  customCell
//
//  Created by user212878 on 12/5/22.
//

import UIKit

class ViewController: UIViewController {

    let myData = ["first","second","Third"]
    @IBOutlet weak var tableView: UITableView!
    
   

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        let nib = UINib(nibName: "DemoTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "demoCell")
        // Do any additional setup after loading the view.
    }


}

//MARK: - TableView Delegates & Datasource

extension ViewController: UITableViewDelegate,
                          UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "demoCell", for: indexPath) as! DemoTableViewCell
        cell.title.text = myData[indexPath.row]
        cell.images.backgroundColor = .red
        //cell.textLabel?.text = myData[indexPath.row]
        return cell
    }
}

