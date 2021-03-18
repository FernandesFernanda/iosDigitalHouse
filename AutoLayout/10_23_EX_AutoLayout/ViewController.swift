//
//  ViewController.swift
//  10_23_EX_AutoLayout
//
//  Created by Fernanda Fernandes on 23/10/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var seriesTableView: UITableView!
    @IBOutlet weak var buttonConfirm: UIButton!
    @IBOutlet weak var buttonDelete: UIButton!
    
    var arraySeries = [Series]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        seriesTableView.delegate = self
        seriesTableView.dataSource = self
        
        buttonConfirm.layer.cornerRadius = 20
        buttonDelete.layer.cornerRadius = 20
        
        arraySeries.append(Series(image: "serie.png", episode: "Episódio 5, temporada 6", rating: "⭐️⭐️⭐️", review: "415 avaliações", synopsis: "xiqloiwbc[qowcupiwnuc[0qwncupnqiucpn0qdwiucnp0qwncuqp0wncupqncdiwq"))
        arraySeries.append(Series(image: "serie.png", episode: "Episódio 5, temporada 6", rating: "⭐️⭐️⭐️", review: "415 avaliações", synopsis: "xiqloiwbc[qowcupiwnuc[0qwncupnqiucpn0qdwiucnp0qwncuqp0wncupqncdiwq"))
        arraySeries.append(Series(image: "serie.png", episode: "Episódio 5, temporada 6", rating: "⭐️⭐️⭐️", review: "415 avaliações", synopsis: "xiqloiwbc[qowcupiwnuc[0qwncupnqiucpn0qdwiucnp0qwncuqp0wncupqncdiwq"))
        arraySeries.append(Series(image: "serie.png", episode: "Episódio 5, temporada 6", rating: "⭐️⭐️⭐️", review: "415 avaliações", synopsis: "xiqloiwbc[qowcupiwnuc[0qwncupnqiucpn0qdwiucnp0qwncuqp0wncupqncdiwq"))
        arraySeries.append(Series(image: "serie.png", episode: "Episódio 5, temporada 6", rating: "⭐️⭐️⭐️", review: "415 avaliações", synopsis: "xiqloiwbc[qowcupiwnuc[0qwncupnqiucpn0qdwiucnp0qwncuqp0wncupqncdiwq"))
        arraySeries.append(Series(image: "serie.png", episode: "Episódio 5, temporada 6", rating: "⭐️⭐️⭐️", review: "415 avaliações", synopsis: "xiqloiwbc[qowcupiwnuc[0qwncupnqiucpn0qdwiucnp0qwncuqp0wncupqncdiwq"))
        arraySeries.append(Series(image: "serie.png", episode: "Episódio 5, temporada 6", rating: "⭐️⭐️⭐️", review: "415 avaliações", synopsis: "xiqloiwbc[qowcupiwnuc[0qwncupnqiucpn0qdwiucnp0qwncuqp0wncupqncdiwq"))
        

    }

    @IBAction func actionConfirm(_ sender: Any) {
    }
    
    @IBAction func actionDelete(_ sender: Any) {
    }
    
}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arraySeries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SeriesTableViewCell", for: indexPath) as! SeriesTableViewCell
        cell.setup(series: arraySeries[indexPath.row])
        return cell
    }
    
    
}

