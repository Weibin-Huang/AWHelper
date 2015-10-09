#AWHelper

## 前言
偶尔看到我一个朋友晨钰的开源项目 [CYHelper](https://github.com/lancy/CYHelper) ,觉得蛮有实用的，可惜这个项目一个多以前就没有再维护更新了。在一个项目，我们都会写很多 *Category* 文件，而这些 *Category* 中，很多是常用的。还有一些非常实用的宏定义，如果把这些API集合起来，这样要开始一个新项目就可以直接导入，是一件相当愉快的事。

我决定写一个类似的 Objective-C 类库，把目前在项目中写的常用方法集合起来，于是就有了AWHelper（我懒到名字都懒得想了）。未来，我也会继续更新这个类库，把自己在开发中觉得比较常用的API加进来。

## 使用

* CocoaPods导入:
  * Podfile 中加入下面一行代码`pod 'AWHelper'`
  
* 手工导入:
  * 把AWHelper里面的所有文件添加到工程里面去

建议把`AWHelper.h`添加工程的Prefix.pch。即在Prefix.pch中

	#import "AWHelper.h"
