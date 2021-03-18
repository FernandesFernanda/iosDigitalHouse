//
//  ViewController.swift
//  navigation
//
//  Created by Fernanda Fernandes on 21/09/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonMyViewOneClick(_ sender: Any) {
        if let myViewOne = UIStoryboard(name: "MyViewOne", bundle: nil).instantiateInitialViewController() as? MyViewOneViewController {
        
        // NAVIGATION
        navigationController?.pushViewController(myViewOne, animated: true)
    }
}
    @IBAction func buttonMyViewOneModalClick(_ sender: Any) {
        if let myViewOneModal = UIStoryboard(name: "MyViewOneModal", bundle: nil).instantiateInitialViewController() as? MyViewOneModalViewController {
            // MODAL
            present(myViewOneModal, animated: true, completion: nil)
        }
    }
    
    @IBAction func buttonMyViewOnePushedClick(_ sender: Any) {
        if let myViewOnePushed = UIStoryboard(name: "MyViewOnePushed", bundle: nil).instantiateInitialViewController() as? MyViewOnePushedViewController {
            // NAVIGATION
            navigationController?.pushViewController(myViewOnePushed, animated: true)
        }
    }
    
    
    @IBAction func buttonViewTwoClick(_ sender: Any) {
        if let myViewTwo = UIStoryboard(name: "MyViewTwo", bundle: nil).instantiateInitialViewController() as? MyViewTwoViewController {
        
        // NAVIGATION
        navigationController?.pushViewController(myViewTwo, animated: true)
    }
    }
    
    @IBAction func buttonViewTwoModalClick(_ sender: Any) {
        if let myViewTwoModal = UIStoryboard(name: "MyViewTwoModal", bundle: nil).instantiateInitialViewController() as? MyViewTwoModalViewController {
            // MODAL
            present(myViewTwoModal, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func buttonViewTwoPushedClick(_ sender: Any) {
        if let myViewTwoPushed = UIStoryboard(name: "MyViewTwoPushed", bundle: nil).instantiateInitialViewController() as? MyViewTwoPushedViewController {
        
        // NAVIGATION
        navigationController?.pushViewController(myViewTwoPushed, animated: true)
    }
    }
    
    @IBAction func buttonMyViewThree(_ sender: Any) {
        if let myViewThree = UIStoryboard(name: "MyViewThree", bundle: nil).instantiateInitialViewController() as? MyViewThreeViewController {
        
        // NAVIGATION
        navigationController?.pushViewController(myViewThree, animated: true)
    }
    }
    
    @IBAction func buttonMyViewThreeModal(_ sender: Any) {
        if let myViewThreeModal = UIStoryboard(name: "MyViewThreeModal", bundle: nil).instantiateInitialViewController() as? MyViewThreeModalViewController {
            // MODAL
            present(myViewThreeModal, animated: true, completion: nil)
        }
    }
    
    @IBAction func buttonMyViewThreePushed(_ sender: Any) {
        if let myViewThreePushed = UIStoryboard(name: "MyViewThreePushed", bundle: nil).instantiateInitialViewController() as? MyViewThreePushedViewController {
        
        // NAVIGATION
        navigationController?.pushViewController(myViewThreePushed, animated: true)
    }
    
    
}
}

