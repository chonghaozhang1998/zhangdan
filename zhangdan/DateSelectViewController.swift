//
//  DateSelectView.swift
//  zhangdan
//
//  Created by chasingzch on 2021/11/2.
//

import UIKit
import SnapKit

class DateSelectViewController:UIViewController {
    var backgroundView:UIImageView!
    var titleLabel:UILabel!
    var dataPicker:UIDatePicker!
    var buttons:[UIButton] = []
    var buttonContainer:UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        // 设置背景
        self.backgroundView = UIImageView()
        self.backgroundView.backgroundColor = .white
        self.backgroundView.layer.cornerRadius = 15
        self.view.addSubview(self.backgroundView)
        self.backgroundView.snp.makeConstraints({ maker in
            maker.center.equalTo(self.view)
            maker.width.equalTo(self.view).multipliedBy(0.8)
            maker.height.equalTo(self.view).multipliedBy(0.6)
        })
        
        self.titleLabel = UILabel()
        self.titleLabel.text = "请选择订单创建日期"
        self.titleLabel.textAlignment = .center
        self.view.addSubview(self.titleLabel)
        self.titleLabel.snp.makeConstraints({ maker in
            maker.top.centerX.width.equalTo(self.backgroundView)
            maker.height.equalTo(self.backgroundView).multipliedBy(0.1)
        })
        
        self.dataPicker = UIDatePicker()
        self.dataPicker.locale = Locale(identifier: "zh_CN")
        self.dataPicker.datePickerMode = .date
        self.dataPicker.preferredDatePickerStyle = .wheels
        self.dataPicker.maximumDate = Date()
        self.view.addSubview(self.dataPicker)
        self.dataPicker.snp.makeConstraints({ maker in
            maker.center.width.equalTo(self.backgroundView)
            maker.height.equalTo(self.backgroundView).multipliedBy(0.8)
        })
        
        self.buttonContainer = UIStackView()
        self.buttonContainer.axis = .horizontal
        self.buttonContainer.distribution = .fillEqually
        self.buttonContainer.alignment = .fill
        self.view.addSubview(self.buttonContainer)
        self.buttonContainer.snp.makeConstraints({ maker in
            maker.centerX.width.equalTo(self.backgroundView)
            maker.top.equalTo(self.dataPicker.snp.bottom)
            maker.height.equalTo(self.backgroundView).multipliedBy(0.1)
        })
        
        for _ in 0...1 {
            let button = UIButton()
            self.buttons.append(button)
            button.layer.borderWidth = 1
            button.layer.borderColor = UIColor.black.cgColor
            button.setTitleColor(.black, for: .normal)
        }
        
        buttons[0].setTitle("确定", for: .normal)
        buttons[1].setTitle("取消", for: .normal)
        for item in self.buttons {
            self.buttonContainer.addArrangedSubview(item)
        }
    }
}
