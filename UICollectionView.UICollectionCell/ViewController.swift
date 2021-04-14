//
//  ViewController.swift
//  UICollectionView.UICollectionCell
//
//  Created by Rustam Keneev on 4/14/21.
//

import UIKit
import SnapKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    
    var data:[String] = []
    var i = 0
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ViewCell()
        cell.loadData(text: data[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let test = TwoViewController()
        test.i = data[indexPath.row]
        
        self.navigationController?.pushViewController(test, animated: true)
        self.tableView.reloadData()
    }
    

    
    var tableView = UITableView(frame: .zero,style: .grouped)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let button = UIButton()
        button.setTitle("+", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .black
        button.addTarget(self, action: #selector(onClickPlus), for: .touchUpInside)
        
        let button2 = UIButton()
        button2.setTitle("-", for: .normal)
        button2.setTitleColor(UIColor.white, for: .normal)
        button2.backgroundColor = .black
        button2.addTarget(self, action: #selector(onClickMinus), for: .touchUpInside)
                

        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(cellWithClass: ViewCell.self)
            
        view.addSubview(tableView)
        tableView.snp.makeConstraints{(make) in
            make.left.bottom.top.right.equalTo(view)
        }
                
        view.addSubview(button)
        button.snp.makeConstraints{(make) in
            make.bottom.equalTo(view).offset(-20)
            make.right.equalTo(view).offset(-20)
            make.height.width.equalTo(50)
            button.layer.cornerRadius = 25
        }
        
        view.addSubview(button2)
        button2.snp.makeConstraints{(make) in
            make.bottom.equalTo(view).offset(-20)
            make.left.equalTo(view).offset(20)
            make.height.width.equalTo(50)
            button2.layer.cornerRadius = 25
        }

        
    }
    
    @objc func onClickPlus(view: UIButton){
        i = i + 1
        data.append(String(i))
        tableView.reloadData()
    }
    
    @objc func onClickMinus(view: UIButton){
        data.removeLast()
        tableView.reloadData()
    }
    
}

