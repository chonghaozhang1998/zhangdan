//
//  SingleViewController.swift
//  zhangdan
//
//  Created by chasingzch on 2021/11/1.
//

import Foundation
import UIKit

// 这个 ViewController 目的是为了显示编辑界面

class SingleViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
