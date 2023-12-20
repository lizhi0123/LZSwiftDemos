//
//  CoverflowViewController.swift
//  LZLayout
//
//  Created by LiZhi on 2023/12/20.
//

import UIKit

class CoverflowViewController: UIViewController {
    
    // MARK: - collectionView 1
    lazy var collectionLayout: LZCollectionCoverflowLayout  = {
        let collectionLayout = LZCollectionCoverflowLayout()
        collectionLayout.scrollDirection = .horizontal
        collectionLayout.headerReferenceSize = CGSize.zero//CGSize(width: kScreenWidth, height: 100)
        
        collectionLayout.minimumLineSpacing = 0
        collectionLayout.minimumInteritemSpacing = 0
        collectionLayout.itemSize = CGSize(width: 215, height: 250)
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
        self.view.backgroundColor = UIColor.white
        self.addSubViews()
    }
    
    private func addSubViews(){
        self.view.addSubview(self.collectionView)
        self.collectionView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(100)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(350)
        }
        
    }

}

// MARK: - UICollectionViewDataSource
extension CoverflowViewController :UICollectionViewDataSource {
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

extension CoverflowViewController : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

