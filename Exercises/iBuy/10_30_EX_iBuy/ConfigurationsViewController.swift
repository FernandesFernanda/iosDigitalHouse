//
//  ConfigurationsViewController.swift
//  10_30_EX_iBuy
//
//  Created by Fernanda Fernandes on 31/10/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import UIKit

class ConfigurationsViewController: UIViewController {

    @IBOutlet weak var configurationsTableView: UITableView!
    
    var arrayConfigurations = [Configurations]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configurationsTableView.delegate = self
        configurationsTableView.dataSource = self
        
        arrayConfigurations.append(Configurations(nameLabel: "Avaliar o App"))
        arrayConfigurations.append(Configurations(nameLabel: "Suporte"))
        arrayConfigurations.append(Configurations(nameLabel: "Relatar um problema por email"))
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

extension ConfigurationsViewController: UITableViewDelegate {
    
}

extension ConfigurationsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayConfigurations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ConfigurationsCell", for: indexPath) as! ConfigurationsCell
        cell.setupConfigurations(configurations: arrayConfigurations[indexPath.row])
        return cell
    }
    
    
}
