//
//  ViewController.swift
//  10_30_EX_iBuy
//
//  Created by Fernanda Fernandes on 30/10/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var listItemsTableView: UITableView!
    
    var arrayItems = [Items]()
    var arrayItemsFiltered = [Items]()
    
    var arraySections = [Section]()
    
    var filterQuery = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listItemsTableView.delegate = self
        listItemsTableView.dataSource = self
        
        searchBar.delegate = self
        
        loadAllData()
        reloadSectionItems()
        
        
    }
    
    private func loadAllData() {
           arrayItems = [Items]()
           arrayItemsFiltered = [Items]()

           arrayItems.append(Items(nameItem: "Maçã", isCompleted: false))
           arrayItems.append(Items(nameItem: "Pera", isCompleted: false))
           arrayItems.append(Items(nameItem: "Uva", isCompleted: false))
           arrayItems.append(Items(nameItem: "Carne", isCompleted: false))
           arrayItems.append(Items(nameItem: "Suco", isCompleted: true))
           arrayItems.append(Items(nameItem: "Açúcar", isCompleted: true))
           arrayItems.append(Items(nameItem: "Arroz", isCompleted: true))
           arrayItems.append(Items(nameItem: "Feijão", isCompleted: true))

           arrayItemsFiltered.append(contentsOf: arrayItems)
           
       }

       func loadData() {
           arrayItemsFiltered = [Items]()
        
           if !filterQuery.isEmpty {
               arrayItemsFiltered = arrayItems.filter { (item) -> Bool in
                item.getTerm().contains(filterQuery.lowercased())
               }
           
            } else {
               arrayItemsFiltered.append(contentsOf: arrayItems)
           }
           
    
           reloadSectionItems()
           listItemsTableView.reloadData()
       }


    func reloadSectionItems() {
        arraySections = [Section]()
        
        let openItens = Section(sectionName: "Abertos", sectionItems: arrayItemsFiltered.filter({ (product) -> Bool in
                   return product.isCompleted == false
               }))
        let completedItens = Section(sectionName: "Concluídos", sectionItems: arrayItemsFiltered.filter({ (product) -> Bool in
                   return product.isCompleted
               }))
               
               arraySections.append(openItens)
               arraySections.append(completedItens)
               

    }
    
    @IBAction func addItem(_ sender: UINavigationBar) {
    
        let saveAlert = UIAlertController(title: "Criar",
                                      message: "Digite o nome do item",
                                      preferredStyle: .alert)
        saveAlert.addTextField(configurationHandler: { (textField) in
            textField.placeholder = "Ex: Maçã"
            
        })
        
        saveAlert.addAction(UIAlertAction(title: "Salvar", style: .default) { (action) in
           
            if let textField = saveAlert.textFields?.first, let text = textField.text {
                self.arrayItems.append(Items(nameItem: text, isCompleted: false))
                self.arrayItemsFiltered.append(Items(nameItem: text, isCompleted: false))
                self.reloadSectionItems()
                self.listItemsTableView.reloadData()
                }})
        
        saveAlert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
        
        present(saveAlert, animated: true, completion: nil)
    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        openOptions(items: arraySections[indexPath.section].sectionItems[indexPath.row])
    }
    
    func openOptions(items: Items) {
        let alert = UIAlertController(title: "Selecione a opção desejada",
                                      message: nil,
                                      preferredStyle: .actionSheet)
        
        
        var markOption = "Marcar como concluído"
        if items.isCompleted {
            markOption = "Marcar como aberto"
        }
        
        alert.addAction(UIAlertAction(title: markOption, style: .default, handler: { (action) in
            items.isCompleted = !items.isCompleted
            self.reloadSectionItems()
            self.listItemsTableView.reloadData()
            
        }))
        
        alert.addAction(UIAlertAction(title: "Editar", style: .default, handler: { (action) in
            self.editAlert(items: items)
            
        }))
            
        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
            

        
        alert.addAction(UIAlertAction(title: "Excluir", style: .destructive, handler: {(itemToDelete) in
            self.deleteAlert(items: items)
            }))
        
        present(alert, animated: true, completion: nil)
    }
    
    func editAlert(items: Items) {
        let editAlert = UIAlertController(title: "Editar",
                                      message: "Digite o nome do item",
                                      preferredStyle: .alert)
        editAlert.addTextField(configurationHandler: { (textField) in
            textField.placeholder = "Ex: Maçã"
            
        })
        editAlert.addAction(UIAlertAction(title: "Salvar", style: .default) { (action) in
            if let textField = editAlert.textFields?.first, let text = textField.text {
                items.nameItem = text
                self.listItemsTableView.reloadData()
                }})
        
        editAlert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
        
        present(editAlert, animated: true, completion: nil)
    }
    
    
    
    func deleteAlert(items: Items) {
        let deleteAlert = UIAlertController(title: "Atenção",
                                      message: "Tem certeza de que deseja apagar esse item?",
                                      preferredStyle: .alert)
        
        deleteAlert.addAction(UIAlertAction(title: "Sim", style: .default) { (action) in
            self.deleteItem(items: items)
            
            })
    
        deleteAlert.addAction(UIAlertAction(title: "Não", style: .cancel, handler: nil))
        
        present(deleteAlert, animated: true, completion: nil)
    }
    
    func deleteItem(items: Items) {
        if !self.arrayItemsFiltered.isEmpty {
        self.arrayItems.removeAll() { $0.nameItem == items.nameItem }
        self.arrayItemsFiltered.removeAll() { $0.nameItem == items.nameItem }
        self.reloadSectionItems()
        self.listItemsTableView.reloadData()

        }
    }
    
    

}


extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return arraySections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arraySections[section].sectionItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as! ItemCell
        cell.setup(items: arraySections[indexPath.section].sectionItems[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arraySections[section].sectionName
    }
}

extension ViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filterQuery = searchText
        loadData()
    }
}
