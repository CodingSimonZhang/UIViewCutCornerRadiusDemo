# UIViewCurCornerRadiusDemo
指定UIView的某几个角为圆角
如果需要将UIView的4个角全部都为圆角，做法相当简单，只需设置其Layer的cornerRadius属性即可（项目需要使用QuartzCore框架）。而若要指定某几个角（小于4）为圆角而别的不变时，这种方法就不好用了。
对于这种情况，Stackoverflow上提供了几种解决方案。其中最简单优雅的方案，就是使用UIBezierPath。下面给出一段示例代码。
UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(120, 10, 80, 80)];
view2.backgroundColor = [UIColor redColor];
[self.view addSubview:view2];
    
UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:view2.bounds byRoundingCorners:UIRectCornerBottomLeft | UIRectCornerBottomRight cornerRadii:CGSizeMake(10, 10)];
CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
maskLayer.frame = view2.bounds;
maskLayer.path = maskPath.CGPath;
view2.layer.mask = maskLayer;
其中，
byRoundingCorners:UIRectCornerBottomLeft | UIRectCornerBottomRight
指定了需要成为圆角的角。该参数是UIRectCorner类型的，可选的值有：
* UIRectCornerTopLeft
* UIRectCornerTopRight
* UIRectCornerBottomLeft
* UIRectCornerBottomRight
* UIRectCornerAllCorners
从名字很容易看出来代表的意思，使用“|”来组合就好了。
