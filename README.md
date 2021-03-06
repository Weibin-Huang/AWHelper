## 前言
偶尔看到Lancy的开源项目 [CYHelper](https://github.com/lancy/CYHelper) ,觉得蛮有实用的，可惜这个项目一个多以前就没有再维护更新了。
在一个项目，我们都会写很多 *Category* 文件，而这些 *Category* 中，很多是常用的。还有一些非常实用的宏定义，如果把这些API集合起来，这样要开始一个新项目就可以直接导入，是一件相当愉快的事。

因为公司很快就会开始一个新项目，所以我打算写一个类似的 Objective-C 类库，把目前在项目中写的常用方法集合起来，于是就有了AWHelper。未来，我也会继续更新这个类库，把自己在开发中觉得比较常用的API更新进来。

在1.1.1版本的AWHelper已经被我添加到公司主要产品的[荷包](https://itunes.apple.com/cn/app/id964715691?mt=8)工程里面了。


## 更新
###1.1.0
* 新增AWUtilsMacro.h，提供常用的宏
* 新增UIView+RoundedCorners.h，提供UIView设置圆角的方法
* 新增NSJSONSerialization+AWHelper.h，提供JSONString与JSONObject快捷转化的方法
* 新增NSMutableAttributedString+AWHelper.h，提供NSMutableAttributedString快捷设置属性的方法
* 新增UIDevice+AWHelper.h，提供UIDevice读取设备相关信息的方法
* 方法添加aw_的前缀方便集成到已有项目中

历史更新信息请查看 [UpdateHistory.md](https://github.com/Weibin-Huang/AWHelper/blob/master/UpdateHistory.md)


## 使用

* CocoaPods导入:
  * Podfile 中加入下面一行代码`pod 'AWHelper'`
  
* 手工导入:
  * 把AWHelper里面的所有文件添加到工程里面去

建议把`AWHelper.h`添加工程的Prefix.pch。即在Prefix.pch中

	#import "AWHelper.h"


## 协议

AWHelper 被许可在 MIT 协议下使用。查阅 LICENSE 文件来获得更多信息。
