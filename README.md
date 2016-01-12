# UIView-TraverseViewController

当View层需要封装一些事件时，需要获取当前顶层的Navigation Controller。

用这个方法可以较方便的获取到当前顶层的UIViewController。

示例代码：

    // SomeView.m

    SomeViewControllerToPush *vc = [[SomeViewControllerToPush alloc] init];
    [[self firstAvailableUIViewController].navigationController pushViewController:vc animated:YES];
