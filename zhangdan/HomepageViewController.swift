//
//  ViewController.swift
//  zhangdan
//
//  Created by chasingzch on 2021/11/1.
//

import UIKit

class HomepageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    // UI相关的变量
    var createItemButton:UIButton? // 新增订单按钮
    var tableView:UITableView? // 显示所有订单的 tableview

    // 数据相关的变量
    var data:[Date:ItemData] = [:] // 每一项就是一个订单
    var date:[Date] = [] // 订单的日期
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }
    
    
    func setupUI() {
        // 设置 tableview
        tableView = UITableView()
        tableView?.dataSource = self
        tableView?.delegate = self
        
        
        // 设置按钮
        createItemButton = UIButton()
        self.view.addSubview(createItemButton!)
        createItemButton?.layer.cornerRadius = 10
        createItemButton?.setTitle("新建货单", for: .normal)
        createItemButton?.setTitleColor(.white, for: .normal)
        createItemButton?.layer.backgroundColor = UIColor.blue.cgColor
        createItemButton?.addTarget(self, action: #selector(createItemButtonSelected), for: .touchUpInside)
        createItemButton?.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            createItemButton!.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5),
            createItemButton!.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.1),
            createItemButton!.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            createItemButton!.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: screen_height * 0.2)
        ])
        
        
    }
    
    // 新增账单
    @objc func createItemButtonSelected() {
        print("点击按钮")
        let modalViewController = DateSelectViewController()
        modalViewController.definesPresentationContext = true
        modalViewController.modalPresentationStyle = .custom
        self.present(modalViewController, animated: true, completion: nil)
    }
    
    
    // tableview delegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    // tableview datasource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var count:Int = 0
        for item in data {
            if item.key == date[section] {
                count += 1
            }
        }
        return count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int{
        return date.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
}


