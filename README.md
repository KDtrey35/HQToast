# HQToast
一款简单的文字提示工具,可以用一行代码使用默认的配置提示，也可以选择自己设置文字的属性来进行提示，简单方便。

## Features
- [x] 使用简单
- [x] 可自定义属性
- [x] 自定义显示的位置
 
 
## Requirements
* iOS 8.0+
* Xcode 9.0+
* Objective-C


## Installation
 `可以直接把source文件夹导入到项目里面，引入头文件#import "HQToast.h”就能使用了`


## Example
 点击`HQToast.xcodeproj`把项目跑起来
<img src="https://github.com/KDtrey35/HQToast/blob/master/Images/1.gif" width="30%" height="30%">


## Usage
### 使用方法
```
// 调用方式一
[[HQToast shareInstance] showText:@"保存成功!"];


// 调用方式二
[[HQToast shareInstance] showTextDuration:1.0 CornerRadiusNum:8.0 TextBackColor:[UIColor greenColor] TextFont:[UIFont systemFontOfSize:14] TextColor:[UIColor redColor] TextFrame:CGPointMake(0, 0) Text:@"这是一段文字提示!"];
```



