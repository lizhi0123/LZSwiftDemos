//
//  ViewController.swift
//  SDWebImageDeomo
//
//  Created by LiZhi on 2024/8/30.
//

import UIKit
import SDWebImage

class ViewController: UIViewController {
    
    
//    lazy var tableView: UITableView  = {
//        let tableView = UITableView(frame: CGRect(x: 0, y: 100, width: 300, height: 400))
//        tableView.backgroundColor = .white
//        tableView.separatorStyle = .none
//        
//        // 注册cell
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
//        
//        // 代理
//        tableView.delegate = self
//        tableView.dataSource = self
//        
//        // 解决隐藏导航栏后, UITableView向下偏移状态栏高度
//        tableView.contentInsetAdjustmentBehavior = .never
//        
//        return tableView
//    }()
//    
    
    private lazy var iconImageView: UIImageView  = {
        let imageView = UIImageView(frame: CGRect(x: 30, y: 100, width: 200, height: 200))
//        imageView.image = UIImage(named: "tab_home_selected")
        //scaleToFill 默认 拉伸以贴合view 一般会变形;scaleAspectFill 缩放以填充完整，不会留空白；scaleAspectFit 缩放以完全显示，会有空白
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = UIColor.orange
//        imageView.sd_imageTransition = SDWebImageTransition.fade;
//        imageView.sd_imageIndicator = SDWebImageActivityIndicator.gray;
        return imageView
    }()
    
    
    private lazy var Button: UIButton  = {
        let button = UIButton(frame: CGRect(x: 10, y: 400, width: 60, height: 45))
        button.setTitle("按钮", for: .normal)
        button.setImage(UIImage(named: ""), for: .normal)
        button.setTitleColor(UIColor.green, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        button.addTarget(self, action: #selector(ButtonClick), for: .touchUpInside)
        button.backgroundColor = UIColor.yellow
        return button
    }()
    
    @objc func ButtonClick() {
        #if true
        var urlStr = "https://nr-platform.s3.amazonaws.com/uploads/platform/published_extension/branding_icon/275/AmazonS3.png"//可以
       
        urlStr = "https://raw.githubusercontent.com/liyong03/YLGIFImage/master/YLGIFImageDemo/YLGIFImageDemo/joy.gif" //可以
        
        urlStr = "https://nokiatech.github.io/heif/content/image_sequences/starfield_animation.heic" //加 SDImageHEICCoder
       
        let pImage = UIImage(named: "tab_home_selected")
        let uRL = URL(string: urlStr)
        /*
        iconImageView.sd_setImage(with: URL(string: urlStr), placeholderImage: UIImage(named: "tab_home_selected")) { receivedSize, expectedSize, url in
            print("---- receivedSize = ", receivedSize)
            
        } completed: { image, error, sdImageCacheType, uRL in
            
            print("---- 完成")
//            let key = SDWebImageManager.shared.cacheKey(for: uRL)
//            SDImageCache.shared.removeImageFromMemory(forKey: key)
            
        }
        */
        iconImageView.sd_setImage(with: uRL, placeholderImage: pImage, options: SDWebImageOptions.retryFailed, context: nil, progress: nil) { image, error, sdImageCacheType, uRL in
            print("----")
        }
        
        #else
        
        let uRL: URL? = Bundle.main.url(forResource: "icon_se_dongfang", withExtension: "png")
        iconImageView.sd_setImage(with: uRL, placeholderImage: UIImage(named: "tab_home_selected")) { receivedSize, expectedSize, url in
            
            print("---- receivedSize = ", receivedSize)
            
            
        } completed: { image, error, sdImageCacheType, uRL in
            print("--- 完成")
        }
        
        #endif
        
        
//        SDWebImageManager.shared.loadImage(with: URL(string: urlStr)) { receivedSize, expectedSize, url in
//            <#code#>
//        } completed: { <#UIImage?#>, <#Data?#>, <#(any Error)?#>, <#SDImageCacheType#>, <#Bool#>, <#URL?#> in
//            <#code#>
//        }

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "首页"
        self.view.backgroundColor = UIColor.white

//        self.view.addSubview(tableView)
        self.view.addSubview(iconImageView)
        self.view.addSubview(Button)
        
    }

}



extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        cell.selectionStyle = .none
        cell.imageView?.backgroundColor = UIColor.red
        return cell
    }
    
    
}

extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

