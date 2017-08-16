//
//  ViewController.m
//  Test2
//
//  Created by MQL-IT on 2017/5/16.
//  Copyright © 2017年 MQL-IT. All rights reserved.
//

#import "ViewController.h"
#import "TextKitController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
    
    NSArray *array = @[@5,@8,@14,@20,@31,@55,@78,@81,@93,@97,@111];
    
    int jieguo = search(array,97);
    if(jieguo == -1){
        NSLog(@"没找到要查找的数字");
    }
}
- (IBAction)next:(id)sender {
    TextKitController *vc = [[TextKitController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}


int search(NSArray *array,int item){
    int x = 1;
    int low = 0;
    int high = (int)[array count] - 1;
    while (low <= high) {
        NSLog(@"第%d次比较",x);
        x++;
        int mid = (high+low)/2;
        if(item == [array[mid] intValue]){
            NSLog(@"%d找到了,在第%d个位置",item,mid);
            return mid;
        }else if(item < [array[mid] intValue]){
            NSLog(@"%d比%d大，继续查找",[array[mid] intValue],item);
            high = mid-1;
        }else{
            NSLog(@"%d比%d小，继续查找",[array[mid] intValue],item);
            low = mid+1;
        }
    }
    return -1;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
