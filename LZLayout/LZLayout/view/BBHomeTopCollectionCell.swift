//
//  BBHomeTopCollectionCell.swift
//  ShortVideo
//
//  Created by LiZhi on 2023/12/19.
//

import UIKit
import SnapKit

class BBHomeTopCollectionCell: UICollectionViewCell {
    private lazy var containerView: UIView  = {
        let view = UIView()
        view.backgroundColor = UIColor.red
        return view
    }()
    
    public lazy var Label: UILabel  = {
        let label = UILabel()
        label.text = "--"
        label.textAlignment = .center
    
        label.numberOfLines = 1
        return label
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubviews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func addSubviews()  {
        self.addSubview(self.containerView)
        containerView.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5))
        }
        
        self.containerView.addSubview(Label)
        self.Label.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.leading.equalToSuperview().offset(10)
            make.bottom.equalToSuperview().offset(-10)
            make.trailing.equalToSuperview().offset(-10)
        }
    }
}
