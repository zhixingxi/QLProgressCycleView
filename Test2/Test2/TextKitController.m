//
//  TextKitController.m
//  Test2
//
//  Created by MQL-IT on 2017/8/7.
//  Copyright © 2017年 MQL-IT. All rights reserved.
//

#import "TextKitController.h"
#import "QLCycleProgressView.h"

@interface TextKitController ()
@property (nonatomic, strong) QLCycleProgressView *progressView;
@end



@implementation TextKitController
- (void)dealloc {
    NSLog(@"释放了控制器");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.progressView];
    _progressView.progress = .3;
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        _progressView.mainColor = [UIColor purpleColor];
        _progressView.progress = .6;
    });
    // Do any additional setup after loading the view.
}

- (QLCycleProgressView *)progressView {
    if (!_progressView) {
        _progressView = [[QLCycleProgressView alloc]initWithFrame:CGRectMake(100, 200, 200, 200)];
    }
    return _progressView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
