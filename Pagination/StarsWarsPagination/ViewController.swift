//
//  ViewController.swift
//  StarsWarsPagination
//
//  Created by Fernanda Fernandes on 13/01/21.
//

import UIKit
import Alamofire
import SwiftyJSON
import UIScrollView_InfiniteScroll



class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var arrayPeople: [String] = []
    var currentPage: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTable()
    
        
    }
    
    func setupTable() {
        tableView.dataSource = self
        tableView.beginInfiniteScroll(true)
        tableView.addInfiniteScroll { (tableView) -> Void in

            self.loadData() {
                //DispatchQueue.main.async {
                    // finish infinite scroll animation
                    tableView.finishInfiniteScroll()
                //}

            }
           
            
        }
        
    }
    
    private func loadData(handler: (() -> Void)?) {
          
        self.getPeople(page: self.currentPage) { (data, error) in
            
            if !error {
                self.currentPage = self.currentPage + 1
                self.arrayPeople.append(contentsOf: data)
                self.tableView.reloadData()
            }
            handler?()
            
        }
           

    }
    
  
}
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayPeople.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PeopleCell", for: indexPath) as! PeopleCell
        cell.setup(title: arrayPeople[indexPath.row])
        return cell
    }
    
    
}

extension ViewController {
    
    func getPeople(page: Int, completion:@escaping (_ response: [String], _ error: Bool) -> Void ) {
        let url = "http://swapi.dev/api/people/?page=\(page)"
        AF.request(url).responseJSON { response in
            if let dictionary = response.value  as? [String: Any], let result = dictionary["results"] as? [[String: Any]] {
                //print(dictionary)
                let resultJSON = JSON(result)
                print(resultJSON)
                
                var arrayTemp:[String] = []
                for item in result {
                    print(JSON(item))
                    let row = JSON(item)
                    arrayTemp.append(row["name"].stringValue)
                }
                

               
                completion(arrayTemp, false)
            } else {
                completion([""], true)
            }
            
        }
    }
}

