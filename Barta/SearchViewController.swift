//
//  SearchViewController.swift
//  Barta
//
//  Created by Apple MacBook Pro on 2/5/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBtn: UISearchBar!
    var myArray = ["All News","Sports","Social","Entertainment","Businss","politics","Current Affeiars","All News","Sports","Social","Entertainment","Businss","politics","Current Affeiars"]
       var search = [String]()
       var searching = false
       
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        searchBtn.delegate = self
        self.navigationItem.title = "Search News"
        
        
    }
    

   

}
extension SearchViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching{
            return search.count
        }else{
            return myArray.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if searching{
            cell?.textLabel?.text = search[indexPath.row]
        }else{
             cell?.textLabel?.text = myArray[indexPath.row]
        }
        
        cell?.accessoryType = .disclosureIndicator
        
        return cell!
        
    }
    
    
}

extension SearchViewController: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        search = myArray.filter({$0.lowercased().prefix(searchText.count) == searchText.lowercased()})
        searching = true
        self.tableView.reloadData()
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searching = false
        searchBar.text = ""
        tableView.reloadData()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }
    
}
