//
//  LZCollectionPageFlowLayout.swift
//  LZLayout
//
//  Created by LiZhi on 2023/12/20.
//



import UIKit

protocol PPCollectionPageLayoutDelegate:AnyObject {
    func collectionPagerLayout(_ layout:LZCollectionPageFlowLayout,scrollEndTo index:Int)
}

///UICollectionView 分页 Layout
class LZCollectionPageFlowLayout: UICollectionViewFlowLayout {
    /// 上方偏移量
    public var marginInset =  0.0
    open weak var delegate :PPCollectionPageLayoutDelegate?
    
    /// 缩放因子，0 不缩放，值越大，缩放越大
    private var viewHeight = 0.0
    private var itemHeight = 0.0
   
    /// 布局之前的准备工作
    override func prepare() {
        super.prepare()
        
        self.collectionView?.decelerationRate = .fast
        
        if(self.scrollDirection == .vertical){
            self.viewHeight = CGRectGetHeight(self.collectionView?.frame ?? .zero)
            self.itemHeight = self.itemSize.height
            // 设置第一个和最后一个默认居中显示 中间其实只留了一个item的区域。
            let top = (viewHeight - itemHeight )/2 - marginInset
            let bottom = (viewHeight - itemHeight )/2 + marginInset
            self.collectionView?.contentInset = UIEdgeInsets(top: top, left: 0, bottom: bottom, right: 0)
        }else {
            self.viewHeight = CGRectGetWidth(self.collectionView?.frame ?? .zero)
            self.itemHeight = self.itemSize.width
            self.collectionView?.contentInset = UIEdgeInsets(top: 0, left: (viewHeight - itemHeight )/2, bottom: 0, right: (viewHeight - itemHeight )/2)
        }
        
    }

    ///    当bounds发生变化的时候是否应该重新进行布局
    override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
        return true
    }

  

    /// 滚动停下的偏移量 返回一个新的偏移点坐标（UICollectionView不通过设置 isPagingEnabled 来实现分页效果，
    /// - Parameters:
    ///   - proposedContentOffset: 计划将要停止的点
    ///   - velocity: 滚动速度
    /// - Returns: 滚动停止的点

    override func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint, withScrollingVelocity velocity: CGPoint) -> CGPoint {
        
        var offset = proposedContentOffset
        let offsetY = self.scrollDirection == .vertical ? offset.y : offset.x
        let origin = self.scrollDirection == .vertical ? CGPoint(x: 0, y: offsetY) : CGPoint(x: offsetY, y: 0)
//        获取UICollectionView停止的时候的可视范围
        let rect = CGRect(origin: origin, size: (collectionView?.frame.size ?? CGSize.zero))
        
        // 取出计算好的布局属性
        let currentRects = self.layoutAttributesForElements(in: rect)
        
        // 计算collectionView的centerY值
        let centerY = self.scrollDirection == .vertical ? ( offset.y + (collectionView?.frame.size.height ?? 0) * 0.5) : ( offset.x + (collectionView?.frame.size.width ?? 0) * 0.5)
        
        // 中心距离 最近item 的差值
        var minDelta = MAXFLOAT
        
        // 修改布局属性 计算在可视范围的距离中心线最近的Item
        if let rects = currentRects {
            for currentLayoutAttributes in rects {
                let currentItemCenterY = self.scrollDirection == .vertical ? currentLayoutAttributes.center.y :  currentLayoutAttributes.center.x
                
                if fabsf(minDelta) > fabsf(Float(currentItemCenterY - centerY)) {
                    minDelta = Float(currentItemCenterY - centerY)
                }
            }
        }
        
        if self.scrollDirection == .vertical {
            offset.y += CGFloat(minDelta + Float(self.marginInset) )
        }else {
            offset.x += CGFloat(minDelta + Float(self.marginInset))
        }
       
        
        // 四舍五入取整
        let offsetIndex = Int( round((offsetY + (viewHeight - itemHeight )/2 ) / itemHeight ))
        self.delegate?.collectionPagerLayout(self, scrollEndTo: offsetIndex)
        return offset
    }

  
}
