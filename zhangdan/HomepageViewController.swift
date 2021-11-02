//
//  ViewController.swift
//  zhangdan
//
//  Created by chasingzch on 2021/11/1.
//

import UIKit

class HomepageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    // UI相关的变量
    var createItemButton:UIButton?
    var tableView:UITableView?

    // 数据相关的变量
    var data:[String:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    func setupUI() {
        createItemButton = UIButton()
        tableView = UITableView()
        
        
        createItemButton?.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            createItemButton!.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5),
            createItemButton!.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.1),
            createItemButton!.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            createItemButton!.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: screen_height * 0.2)
        ])
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // tableview delegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
    }
    
    // tableview datasource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
}


