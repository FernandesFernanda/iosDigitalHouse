//
//  MyViewThreePushedViewController.swift
//  navigation
//
//  Created by Fernanda Fernandes on 22/09/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import UIKit

class MyViewThreePushedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionClose(_ sender: Any) {
           navigationController?.popViewController(animated: true)
           
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
