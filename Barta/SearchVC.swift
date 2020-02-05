//
//  SearchVC.swift
//  Barta
//
//  Created by Apple MacBook Pro on 2/4/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit

class SearchVC: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    var newsarray = ["i1","i2","i3","i4","i5","i6","i7","i8","i9","i10"]
    override func viewDidLoad() {
        super.viewDidLoad()

        tableview.delegate = self
        tableview.dataSource = self
    }
    

    

}
extension SearchVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsarray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.NewsImage.image = UIImage(named: newsarray[indexPath.row])
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 450
    }
    
}

