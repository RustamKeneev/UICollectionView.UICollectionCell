//
//  ViewCell.swift
//  UICollectionView.UICollectionCell
//
//  Created by Rustam Keneev on 4/14/21.
//

import UIKit
import SnapKit

class ViewCell: BaseTableViewCell {
    var label = UILabel()
    
    override func addSubview() {
        addSubview(label)
        label.snp.makeConstraints{(make) in
            make.center.equalTo(self)
        }
    }
    func loadData(text: String) {
        label.text = text
    }
}
