//
//  BaseTableViewCell.swift
//  UICollectionView.UICollectionCell
//
//  Created by Rustam Keneev on 4/14/21.
//

import UIKit
import SnapKit
class BaseTableViewCell: UITableViewCell {
    var isLoaded = false
    
    override func layoutSubviews() {
        super.layoutSubviews()
        configure()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        if !isLoaded {
            isLoaded = true
            
            addSubview()
            setupUI()
            onViewLoaded()
        }
    }
    open func onViewLoaded(){
        
    }
    
    open func setupUI(){
        
    }
    
    open func addSubview(){
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layoutMargins = UIEdgeInsets.zero
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
}

extension UITableView{
    func register<T: UITableViewCell>(cellWithClass name: T.Type){
        register(T.self, forCellReuseIdentifier: String(describing: name))
    }
}
