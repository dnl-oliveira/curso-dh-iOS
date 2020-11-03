//
//  ListViewController.swift
//  20201030_iBuy
//
//  Created by Daniel Nascimento on 31/10/20.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var listTableView: UITableView!
    var arrayProducts = [Product]()
    var arrayProductsAll = [Product]()
    var arrayCompleted = [Product]()
    var arrayOpen = [Product]()

    var index: Int?
    var filterQuery = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        listTableView.delegate = self
        listTableView.dataSource = self
        searchBar.delegate = self

        arrayProducts.append(Product(name: "Maçã", isCompleted: false))
        arrayProducts.append(Product(name: "Pera", isCompleted: false))
        arrayProducts.append(Product(name: "Uva", isCompleted: false))
        arrayProducts.append(Product(name: "Suco", isCompleted: true))
        arrayProducts.append(Product(name: "Açucar", isCompleted: true))
        arrayProducts.append(Product(name: "Arroz", isCompleted: true))
        arrayProductsAll = arrayProducts

        loadFilters()
    }
    
    func loadFilters(){
        arrayOpen = []
        arrayCompleted = []
        arrayCompleted = arrayProducts.filter { (product) -> Bool in
            return product.isCompleted == true
        }

        arrayOpen = arrayProducts.filter { (product) -> Bool in
            return product.isCompleted == false
        }

    }
    
    func loadFiltered() {
        
        if !filterQuery.isEmpty {
            arrayProducts = arrayProductsAll.filter { (product) -> Bool in
                product.name.contains(filterQuery)
            }
        }
        else {
            arrayProducts = arrayProductsAll
        }
        loadFilters()
        self.listTableView.reloadData()
        
    }

    @IBAction func actionButtonAdd(_ sender: Any) {
        let alert = UIAlertController(title: "Criar", message: "Digite o nome do item", preferredStyle: UIAlertController.Style.alert )
        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel) { (UIAlertAction) in

        })
        alert.addAction(UIAlertAction(title: "Salvar", style: .default) { (UIAlertAction) in
            let textField = alert.textFields![0] as UITextField
            if textField.text != nil {
                self.arrayProducts.append(Product(name: textField.text!, isCompleted: false))
                self.loadFilters()
                self.listTableView.reloadData()
            }
           

        })
        alert.addTextField { (textField) in
            textField.placeholder = "Ex: Maçã"
        }

        self.present(alert, animated:true, completion: nil)
        
    }
    
    func alertEdit(product: Product){
        
        let alert = UIAlertController(title: "Editar", message: "Digite o nome do item", preferredStyle: UIAlertController.Style.alert )
        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel) { (UIAlertAction) in

        })
        alert.addAction(UIAlertAction(title: "Salvar", style: .default) { (UIAlertAction) in
            let textField = alert.textFields![0] as UITextField
            if textField.text != nil {
                if let row = self.arrayProducts.firstIndex(where: {$0.name == product.name}) {
                    self.arrayProducts[row].name = textField.text!
                }
                self.loadFilters()
                self.listTableView.reloadData()
            }
           

        })
        alert.addTextField { (textField) in
            textField.placeholder = "Ex: Maçã"
            textField.text = product.name
        }

        self.present(alert, animated:true, completion: nil)
    }
    
    func alertDelete(product: Product){
        
        let alert = UIAlertController(title: "Atenção", message: "Tem certeza que deseja apagar este item?", preferredStyle: UIAlertController.Style.alert )
        alert.addAction(UIAlertAction(title: "Sim", style: .default) { (UIAlertAction) in
            if let row = self.arrayProducts.firstIndex(where: {$0.name == product.name}) {
                self.arrayProducts.remove(at: row)
            }
            self.loadFilters()
            self.listTableView.reloadData()
        })
        alert.addAction(UIAlertAction(title: "Não", style: .cancel) { (UIAlertAction) in

        })
        self.present(alert, animated:true, completion: nil)
    }
    
    func openOptions(product: Product){
        let alert = UIAlertController(title: "Opções", message: "Selecione a opção desejada", preferredStyle: .actionSheet)

        var markOption = "Marcar como concluído"
        if product.isCompleted{
            markOption = "Marcar como aberto"
        }

        alert.addAction(UIAlertAction(title: markOption, style: .default) { (UIAlertAction) in
            product.isCompleted = !product.isCompleted
            self.loadFilters()
            self.listTableView.reloadData()
        })

        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel) { (UIAlertAction) in

        })
        alert.addAction(UIAlertAction(title: "Excluir", style: .destructive) { (UIAlertAction) in
            self.alertDelete(product: product)
        })

        alert.addAction(UIAlertAction(title: "Editar", style: .default) { (UIAlertAction) in
            self.alertEdit(product: product)
        })



        self.present(alert, animated: true){}
    }
}
extension ListViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            openOptions(product: arrayOpen[indexPath.row])
        }else {
            openOptions(product: arrayCompleted[indexPath.row])
        }

        //index = indexPath.row
        //openOptions(product: array[])
        //let cell = tableView.cellForRow(at: indexPath) as? ListViewCell
        //print(cell?.nameLabel.text)
        //print(indexPath.section)
    }

}

extension ListViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return arrayOpen.count
        }
        else {
            return arrayCompleted.count
        }

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListTableViewCell", for: indexPath) as! ListTableViewCell
        if indexPath.section == 0 {
            cell.setup(product: arrayOpen[indexPath.row])
        }else {
            cell.setup(product: arrayCompleted[indexPath.row])
        }

        return cell
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {

            return "Abertos"
        }
        else {
            return "Concluidos"
        }
    }


}

extension ListViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filterQuery = searchText
        loadFiltered()
    }
}

