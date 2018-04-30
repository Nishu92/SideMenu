//
//  ViewController.swift
//  sideMenu
//
//  Created by TOPS on 2/14/18.
//  Copyright © 2018 TOPS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var menuVC: tableViewController!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuVC = self.storyboard?.instantiateViewController(withIdentifier: "go") as! tableViewController
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func menuButton(_ sender: UIBarButtonItem) {
        
        if AppDelegate.menu_bool{
            showMenu()
        }
        else{
            closeMenu()
        }
        
    }


    func showMenu(){
        
        UIView.animate(withDuration: 0.3){()-> Void in
            self.menuVC.view.frame = CGRect(x: 0, y: 60, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
//            self.menuVC.view.backgroundColor = UIColor.black.withAlphaComponent(0.6)
            self.addChildViewController(self.menuVC)
            self.view.addSubview(self.menuVC.view)
            AppDelegate.menu_bool = false

        }
    }
    
    func closeMenu(){
        UIView.animate(withDuration: 0.3,animations: {()-> Void in
        self.menuVC.view.frame = CGRect(x: -UIScreen.main.bounds.width, y: 60, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        
        }) { (finished) in
            self.menuVC.view.removeFromSuperview()
        }
        AppDelegate.menu_bool = true
    }
}

