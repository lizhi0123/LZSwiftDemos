//
//  BBLinearLayout.swift
//  ShortVideo
//
//  Created by LiZhi on 2023/12/19.
//

import UIKit

protocol BBMatchUserPagerLayoutDelegate {
    func matchUserPagerLayout(_ layout: LZCollectionCoverflowLayout, scrollTo index: Int)
}

/// UICollectionView 线型 分页FlowLayout , 也可以用 FSPagerView.transformer = .linear
/// 参考 https://www.jianshu.com/p/ad8add0059a5
class LZCollectionCoverflowLayout: UICollectionViewFlowLayout {
    
    // 如何计算缩放比?我的思路是，距离越小，缩放比越小，缩放比最大是1，当俩个中心点的 x 坐标
    // 重合的时候，缩放比就为 1.
    // 缩放因子
    var factor = 0.0009
    
    
    private var viewWidth = 0.0
    private var viewHeight = 0.0
    
    private var itemWidth = 0.0
    private var itemHeight = 0.0
    var delegate: BBMatchUserPagerLayoutDelegate?
    // 布局之前的准备工作
    override func prepare() {
        super.prepare()
        
        self.collectionView?.decelerationRate = .fast
        
        switch scrollDirection {
        case .horizontal:
            self.viewWidth = CGRectGetWidth(self.collectionView?.frame ?? .zero)
            self.itemWidth = self.itemSize.width
            let mergain =  (viewWidth - itemWidth - self.minimumInteritemSpacing) / 2
            self.collectionView?.contentInset = UIEdgeInsets(top:  0, left: mergain, bottom: 0, right: mergain)
        case .vertical:
            self.viewHeight = CGRectGetHeight(self.collectionView?.frame ?? .zero)
            self.itemHeight = self.itemSize.height
            self.collectionView?.contentInset = UIEdgeInsets(top: (viewHeight - itemHeight - self.minimumInteritemSpacing) / 2, left: 0, bottom: (viewHeight - itemHeight) / 2, right: 0)
         default:
            break
        }
        
    }

    // 当bounds发生变化的时候是否应该重新进行布局
    override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
        return true
    }

    /// 这个方法在滚动的过程当中, 系统会根据需求来调用
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        //    https://juejin.cn/post/6940140043042291748

        // 1.获取该范围内的布局数组
        let attributes = super.layoutAttributesForElements(in: rect)

        // 2.计算出整体中心点的 x 坐标
        let centerX = collectionView!.contentOffset.x + collectionView!.bounds.width / 2
        let centerY = collectionView!.contentOffset.y + collectionView!.bounds.height / 2

        // 3.根据当前的滚动，对每个 cell 进行相应的缩放

        attributes?.forEach { attr in

            // 获取每个 cell 的中心点，并计算这俩个中心点的偏移值
            //            let pad = abs(centerX - attr.center.x)

            var pad = 0.0
            switch scrollDirection {
            case .horizontal:
                pad = abs(centerX - attr.center.x)
            case .vertical:
                pad = abs(centerY - attr.center.y)
             default:
                break
            }

            

            // 计算缩放比

            let scale = 1 / (1 + pad * CGFloat(factor))

            attr.transform = CGAffineTransform(scaleX: scale, y: scale)
        }

        // 4.返回修改后的 attributes 数组

        attributes?.forEach { attr in
        }

        return attributes
    }

    ///   UICollectionView 停止滚动时，返回一个新的偏移点坐标（UICollectionView不通过设置 isPagingEnabled 来实现分页效果，）proposedContentOffset: 将要停止的点
    override func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint, withScrollingVelocity velocity: CGPoint) -> CGPoint {
        var offset = proposedContentOffset

       
        
        var minDelta = MAXFLOAT
        
        var offsetIndex = 0
        switch scrollDirection {
        case .horizontal:
            
            let rect = CGRect(origin: CGPoint(x: offset.x, y: 0), size: collectionView?.frame.size ?? CGSize.zero)

            // 取出计算好的布局属性
            let currentRects = super.layoutAttributesForElements(in: rect)
            // 计算collectionView的centerY值
            let centerX = offset.x + (collectionView?.frame.size.width ?? 0) * 0.5

            // 修改布局属性
            if let rects = currentRects {
                for currentLayoutAttributes in rects {
                    if fabsf(minDelta) > fabsf(Float(currentLayoutAttributes.center.x - centerX)) {
                        minDelta = Float(currentLayoutAttributes.center.x - centerX)
                    }
                }
            }

            offset.x += CGFloat(minDelta)

            // 四舍五入取整
            let offsetIndexRound = round(offset.x + (viewWidth - itemWidth - self.minimumInteritemSpacing) / 2) / (itemWidth + minimumInteritemSpacing)
             offsetIndex = Int(offsetIndexRound)
            print("---- offsetIndex  x = ", offsetIndex)
        case .vertical:
            
            let rect = CGRect(origin: CGPoint(x: 0, y: offset.y), size: collectionView?.frame.size ?? CGSize.zero)

            // 取出计算好的布局属性
            let currentRects = super.layoutAttributesForElements(in: rect)
            
            // 计算collectionView的centerY值
            let centerY = offset.y + (collectionView?.frame.size.height ?? 0) * 0.5

            // 修改布局属性
            if let rects = currentRects {
                for currentLayoutAttributes in rects {
                    if fabsf(minDelta) > fabsf(Float(currentLayoutAttributes.center.y - centerY)) {
                        minDelta = Float(currentLayoutAttributes.center.y - centerY)
                    }
                }
            }

            offset.y += CGFloat(minDelta)

            // 四舍五入取整
            let offsetIndexRound = round(offset.y + (viewHeight - itemHeight - self.minimumInteritemSpacing) / 2) / (itemHeight + minimumInteritemSpacing)
             offsetIndex = Int(offsetIndexRound)
            print("---- offsetIndex y = ", offsetIndex)
        default:
            break
        }

        
        self.delegate?.matchUserPagerLayout(self, scrollTo: offsetIndex)

        return offset
    }
}
