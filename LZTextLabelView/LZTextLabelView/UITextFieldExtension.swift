//
//  UITextFieldExtension.swift
//  hangge_1096
//
//  Created by hangge on 16/3/23.
//  Copyright © 2016年 hangge.com. All rights reserved.
//

import UIKit

extension UITextView {
    
    /**
     转换特殊符号标签字段
     */
    func resolveHashTags(){
        let nsText:NSString = self.text! as NSString
        // 使用默认设置的字体样式
        let attrs = [NSAttributedString.Key.font : self.font!]
        let attrString = NSMutableAttributedString(string: nsText as String,
                                                   attributes:attrs)
        
        //用来记录遍历字符串的索引位置
        var bookmark = 0
        //用于拆分的特殊符号
        let charactersSet = CharacterSet(charactersIn: "@#")
        
        //先将字符串按空格和分隔符拆分
        let sentences:[String] = self.text.components(
            separatedBy: CharacterSet.whitespacesAndNewlines)
        
        for sentence in sentences {
            //如果是url链接则跳过
            if !verifyUrl(sentence as String) {
                //再按特殊符号拆分
                let words:[String] = sentence.components(
                    separatedBy: charactersSet)
                var bookmark2 = bookmark
                for i in 0..<words.count{
                    let word = words[i]
                    let keyword = chopOffNonAlphaNumericCharacters(word as String)
                    if keyword != "" && i>0{
                        //使用自定义的scheme来表示各种特殊链接，比如：mention:hangge
                        //使得这些字段会变蓝色且可点击
                        
                        //匹配的范围
//                        let remainingRangeLength = min((nsText.length - bookmark2 + 1),
//                                                       word.characters.count+2)
                        let remainingRangeLength = min((nsText.length - bookmark2 + 1),
                                                       word.count + 2 )
                        let remainingRange = NSRange(location: bookmark2-1,
                                                     length: remainingRangeLength)
                        print(keyword, bookmark2, remainingRangeLength)
                        
                        //获取转码后的关键字，用于url里的值
                        //（确保链接的正确性，比如url链接直接用中文就会有问题）
                        let encodeKeyword = keyword
                            .addingPercentEncoding(
                                withAllowedCharacters: CharacterSet.urlQueryAllowed)!
                        
                        //匹配@某人
                        var matchRange = nsText.range(of: "@\(keyword)",
                                                options: .literal,
                                                range:remainingRange)
                        attrString.addAttribute(NSAttributedString.Key.link,
                                                value: "mention:\(encodeKeyword)",
                                                range: matchRange)
                        
                        //匹配#话题#
                        matchRange = nsText.range(of: "#\(keyword)#",
                                    options: .literal,
                                    range:remainingRange)
                        attrString.addAttribute(NSAttributedString.Key.link,
                                                value: "hash:\(encodeKeyword)",
                                                range: matchRange)
                    }
                    //移动坐标索引记录
//                    bookmark2 += word.characters.count + 1
                    bookmark2 += word.count + 1
                }
            }
            
            //移动坐标索引记录
//            bookmark += sentence.characters.count + 1
            bookmark += sentence.count + 1
        }
        
        print(nsText.length,bookmark)
        
        //最终赋值
        self.attributedText = attrString
    }
    
    /**
     验证URL格式是否正确
     */
    fileprivate func verifyUrl(_ str:String) -> Bool {
        // 创建一个正则表达式对象
        do {
            let dataDetector = try NSDataDetector(types:
                NSTextCheckingTypes(NSTextCheckingResult.CheckingType.link.rawValue))
            // 匹配字符串，返回结果集
//            let res = dataDetector.matches(in: str,
//                            options: NSRegularExpression.MatchingOptions(rawValue: 0),
//                            range: NSMakeRange(0, str.characters.count))
            let res = dataDetector.matches(in: str,
                            options: NSRegularExpression.MatchingOptions(rawValue: 0),
                            range: NSMakeRange(0, str.count))
            // 判断结果(完全匹配)
//            if res.count == 1  && res[0].range.location == 0
//                && res[0].range.length == str.characters.count {
            if res.count == 1  && res[0].range.location == 0
                && res[0].range.length == str.count {
                return true
            }
        }
        catch {
            print(error)
        }
        return false
    }
    
    /**
     过滤部多余的非数字和字符的部分
     比如：@hangge.123 -> @hangge
     */
    func chopOffNonAlphaNumericCharacters(_ text:String) -> String {
        let nonAlphaNumericCharacters = CharacterSet.alphanumerics.inverted
        let characterArray = text.components(separatedBy: nonAlphaNumericCharacters)
        return characterArray[0]
    }
}
