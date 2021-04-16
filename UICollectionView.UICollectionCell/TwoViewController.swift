//
//  TwoViewController.swift
//  UICollectionView.UICollectionCell
//
//  Created by Rustam Keneev on 4/14/21.
//

import UIKit

class TwoViewController: UIViewController {
    var i = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        var label = UIButton()
        label.backgroundColor = .black
        label.setTitle(i, for: .normal)
        label.addTarget(self, action: #selector(onClik), for: .touchUpInside)
        
        view.addSubview(label)
        label.snp.makeConstraints{(make) in
            make.center.equalTo(view)
        }
    }
    
    @objc func onClik(view: UIButton){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = storyBoard.instantiateViewController(identifier: "ViewController")
        
//        secondVC.modalPresentationStyle = .fullScreen
//        secondVC.modalTransitionStyle = .crossDissolve
//        
        present(secondVC,animated: true, completion: nil)
    }
}
