//
//  ViewController.swift
//  LZLayout
//
//  Created by LiZhi on 2023/12/20.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var collectionLayout: LZCollectionPageFlowLayout  = {
        let collectionLayout = LZCollectionPageFlowLayout()
        collectionLayout.scrollDirection = .horizontal
        collectionLayout.headerReferenceSize = CGSize.zero//CGSize(width: kScreenWidth, height: 100)
        
        collectionLayout.minimumLineSpacing = 0
        collectionLayout.minimumInteritemSpacing = 0
        let itemWidth = 315
        collectionLayout.itemSize = CGSize(width: 315, height: 350)
        return collectionLayout
    }()
    
    lazy var collectionView: UICollectionView  = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: self.collectionLayout)
        collectionView.backgroundColor = UIColor.gray
        collectionView.register(BBHomeTopCollectionCell.self, forCellWithReuseIdentifier: "BBHomeTopCollectionCell")
        
        collectionView.dataSource = self
        collectionView.delegate = self
//        collectionView.contentInsetAdjustmentBehavior = .never
        return collectionView
    }()
    
    
   


    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.addSubViews()
    }
    
    private func addSubViews(){
        self.view.addSubview(self.collectionView)
        self.collectionView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
//            make.bottom.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(400)
        }
    }


}

// MARK: - UICollectionViewDataSource
extension ViewController :UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 14
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BBHomeTopCollectionCell", for: indexPath)
        guard let cell  = cell as? BBHomeTopCollectionCell else { return UICollectionViewCell() }
        
        cell.backgroundColor = UIColor.yellow
        cell.Label.text = "\(indexPath.row)"
        return cell
    }
 
    
}

extension ViewController : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

