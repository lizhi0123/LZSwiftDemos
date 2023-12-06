//
//  MOPresentationController.swift
//  MOCustomTransitionAnimation
//
//  Created by mikimo on 2022/11/26.
//  Copyright © 2022 mikimo. All rights reserved.
//

import UIKit

class MOPresentationController: UIPresentationController {
    
    // presentVC 在动画容器上的 frame
    override var frameOfPresentedViewInContainerView: CGRect {
        get {
            print(self, #line, "frameOfPresentedViewInContainerView")
                        
            let containerBounds: CGRect = self.containerView?.bounds ?? .zero
            let width = CGFloat(floorf(Float(containerBounds.size.width) / 2.0))
            let height = containerBounds.size.height
            let originX = containerBounds.size.width - width
                               
            return CGRect(x: originX, y: 0.0, width: width, height: height)
        }
    }
    
    
    // MARK: - 将要开始 present，设置初始值 和 动画回调
    override func presentationTransitionWillBegin() {
        super.presentationTransitionWillBegin()
        print(self, #line, "presentationTransitionWillBegin")
        
        // 1. get animation container view (获取动画容器视图)
        guard let containerView = containerView else { return }
        
        // 2. set initial value for animation views and add to container view (设置动画视图的初始值， 并添加到都到容器上)
        self.moDimmingView.frame = containerView.bounds
        self.moDimmingView.alpha = 0.0
        containerView.insertSubview(self.moDimmingView, at: 0)
        
        // 3. execute animation (执行动画)
        // 这里尝试去拿一个时间点的回调，能拿到就在回调里执行显示动画；拿不到就直接设置显示
        guard let transitionCoordinator = self.presentedViewController.transitionCoordinator else {
            self.moDimmingView.alpha = 1.0
            return
        }
        transitionCoordinator.animateAlongsideTransition(in: self.presentedView) { context in
            self.moDimmingView.alpha = 1.0
        }
    }
    
    // MARK: - present 动画结束
    override func presentationTransitionDidEnd(_ completed: Bool) {
        super.presentationTransitionDidEnd(completed)
        print(self, #line, "presentationTransitionDidEnd")
        
        // remove dark background view when transition fail
        if !completed {
            self.moDimmingView.removeFromSuperview()
        }
    }
    
    
    // MARK: - 将要开始 dismiss，设置初始值 和 动画回调
    override func dismissalTransitionWillBegin() {
        super.dismissalTransitionWillBegin()
        print(self, #line, "dismissalTransitionWillBegin")
        
        guard let transitionCoordinator = self.presentedViewController.transitionCoordinator else {
            self.moDimmingView.alpha = 0.0
            return
        }
        transitionCoordinator.animateAlongsideTransition(in: self.presentedView) { context in
            self.moDimmingView.alpha = 0.0
        }
    }

    // MARK: - dismiss 动画结束
    override func dismissalTransitionDidEnd(_ completed: Bool) {
        super.dismissalTransitionDidEnd(completed)
        print(self, #line, "dismissalTransitionDidEnd")
        
        if completed {
            self.moDimmingView.removeFromSuperview()
        }
    }
   
    
    // 暗色背景
    lazy var moDimmingView: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = UIColor(white: 0.0, alpha: 0.4)
        view.alpha = 0.0
        return view
    }()
}

