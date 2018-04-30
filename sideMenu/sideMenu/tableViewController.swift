//
//  tableViewController.swift
//  sideMenu
//
//  Created by TOPS on 2/14/18.
//  Copyright © 2018 TOPS. All rights reserved.
//

import UIKit

class tableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var list = ["Home","About Us","Rate Us","Share","Log Out"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = list[indexPath.row]
            return cell!
        }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "go")
        navigationController?.pushViewController(vc!, animated: true)
    }


}


