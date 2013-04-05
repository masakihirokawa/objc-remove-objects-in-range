//
//  ViewController.m
//  RemoveObjectsInRangeSample
//
//  Created by Dolice on 2013/04/05.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	[self main];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)main
{
  //配列を生成する
  NSMutableArray *myArray;
  myArray = [NSMutableArray arrayWithObjects:
             @"Apple", @"Banana", @"Orange", nil];
  
  //順序付けされたセットを生成する
  NSMutableOrderedSet *orderedSet;
  orderedSet = [NSMutableOrderedSet orderedSetWithArray:myArray];
  
  //範囲を指定して削除する
  [myArray removeObjectsInRange:NSMakeRange(1, 2)];
  NSLog(@"myArray: %@", myArray);
  
  [orderedSet removeObjectsInRange:NSMakeRange(1, 2)];
  NSLog(@"orderedSet: %@", orderedSet);
}

@end
