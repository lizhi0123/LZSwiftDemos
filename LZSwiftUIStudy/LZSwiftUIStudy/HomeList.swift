//
//  HomeList.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/24.
//

import SwiftUI
import UIKit

struct HomeList: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("特殊视图")) {
                    NavigationLink(
                        destination: WebViewPage(),
                        label: {
                            PageRow(title: "webView", subTitle: "用户展示一个打开的网页")
                        })
                    NavigationLink {
                        ControllerPage<UIKitController>()
                    } label: {
                        PageRow(title: "UIViewController", subTitle: "打开 UIViewController")
                    }
                    NavigationLink {
                        SpacerPage()
                    } label: {
                        PageRow(title: "Spacer", subTitle: "一个空白占用视图,为了方便展示,已用黄色标出")
                    }

                }
                
                
                Section(header: Text("基础控件")) {
                    NavigationLink(
                        destination: TextLabelView(),
                        label: {
                            PageRow(title: "Text&Label", subTitle: "")
                        })
                    
                    NavigationLink(
                        destination: TextSecureFieldDemo(),
                        label: {
                            PageRow(title: "TextField & SecureField", subTitle: "")
                        })
                    
                    NavigationLink(
                        destination: ImageDemo(),
                        label: {
                            PageRow(title: "Image", subTitle: "")
                        })
                    
                    NavigationLink(
                        destination: ButtonLinkDemo(),
                        label: {
                            PageRow(title: "button link", subTitle: "")
                        })
                    
                    NavigationLink(
                        destination: NavigationButtonPage(),
                        label: {
                            PageRow(title: "NavigationButton", subTitle: "")
                        })
                }
                
                Section(header: Text("选择器")) {
                    NavigationLink(destination: PickerPage()) {
                        PageRow(title: "Picker",subTitle: "可自定义数据源的 Picker 选择器")
                    }
                    
                    NavigationLink(destination: TogglePage()) {
                        PageRow(title: "Toggle",subTitle: "开关状态切换")
                    }
                    
                    NavigationLink(destination: SliderPage()) {
                        PageRow(title: "Slider",subTitle: "用以设置指定范围内的值")
                    }
                    NavigationLink(destination: StepperPage()) {
                        PageRow(title: "Stepper",subTitle: "用以增加或减少数值")
                    }
                }
                
                Section(header: Text("布局")) {
                    NavigationLink(destination: HStackPage()) {
                        PageRow(title: "HStack",subTitle: "将子视图排列在水平线上的视图")
                    }
                    NavigationLink(destination: VStackPage()) {
                        PageRow(title: "VStack",subTitle: "将子视图排列在垂直线上的视图")
                    }
                    NavigationLink(destination: ZStackPage()) {
                        PageRow(title: "ZStack",subTitle: "覆盖子视图，在两轴上对齐")
                    }
                    
                    NavigationLink(destination: ScrollViewPage()) {
                        PageRow(title: "ScrollView",subTitle: "滚动视图")
                    }
                    
                    NavigationLink(destination: ForEachPage()) {
                        PageRow(title: "ForEach",subTitle: "用于根据已有数据的集合展示视图")
                    }
                    
                    NavigationLink(destination: GroupPage()) {
                        PageRow(title: "Group",subTitle: "用于集合多个视图，对 Group 设置的属性，将作用于每个子视图")
                    }.frame(height: 80)
                    NavigationLink(destination: SectionPage()) {
                        PageRow(title: "Section",subTitle: "用于创建带头/尾部的视图内容，一般结合 `List` 组件使用")
                    }.frame(height: 80)
                    
                    
                }
                
                Section(header: Text("Alert 弹框视图")) {
                    NavigationLink(destination: AlertPage()) {
                        PageRow(title: "Alert",subTitle: "展示一个弹框提醒")
                    }
                    NavigationLink(destination: ActionSheetPage()) {
                        PageRow(title: "ActionSheet",subTitle: "弹出一个选择框")
                    }
                    NavigationLink(destination: ModalPage()) {
                        PageRow(title: "Modal",subTitle: "Modal 弹出一个视图")
                    }
                    NavigationLink(destination: PopoverPage()) {
                        PageRow(title: "Popover",subTitle: "Pop 弹出一个视图")
                    }
                }
                

            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle(Text("Example"), displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                print("clicked")
            }, label: {
                Text("Right").foregroundColor(.orange)
            }))
        }

    }
}

#Preview {
    HomeList()
}
