//
//  PerformanceCell.swift
//  xgo
//
//  Created by Mac on 2023/2/14.
//

import UIKit
import SnapKit

class PerformanceCell: UICollectionViewCell {
    
    var titleLabel: UILabel!
    var icon: UIImageView!
    var isSelect: Bool! {
        didSet {
            
            if  isSelect {
                titleLabel.textColor = UIColor(red: 0.21, green: 0.54, blue: 0.98,alpha:1)
                icon.image = UIImage(named: "dian")
            } else {
                titleLabel.textColor = UIColor(red: 0.55, green: 0.64, blue: 0.78,alpha:1)
                icon.image = UIImage(named: "wdian")
            }
            
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        icon = UIImageView(image: UIImage(named: "wdian"))
        self.contentView.addSubview(icon)
        
        icon.snp.makeConstraints { make in
            make.edges.equalTo(self.contentView)
        }
        
        titleLabel = UILabel()
        titleLabel.text = "坐下"
        titleLabel.textAlignment = .center
        self.contentView.addSubview(titleLabel)
        
        titleLabel.snp.makeConstraints { make in
            make.edges.equalTo(self.contentView)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
