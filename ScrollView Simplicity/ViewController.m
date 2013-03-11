//
//  ViewController.m
//  ScrollView Simplicity
//
//  Created by Danny Favela on 3/10/13.
//  Copyright (c) 2013 Danny Favela. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize scrollView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    scrollView.contentSize=CGSizeMake(1280,960);
    
    CGSize newSize = CGSizeMake(1280, 1280);
    // assume self is the content view
    CGRect newFrame = (CGRect){CGPointZero,newSize}; // Assuming you want to start at the top-left corner of the scroll view. Change CGPointZero as appropriate
    [scrollView setContentSize:newSize]; // Change scroll view's content size
    [[self view] setFrame:newFrame]; // Change views actual size
    
    CGRect visibleRect;
    visibleRect.origin = [scrollView contentOffset];
    visibleRect.size = [scrollView bounds].size;
    [[self view]setNeedsDisplayInRect:visibleRect];
}

- (void)viewDidAppear:(BOOL)animated
{
    scrollView.contentSize=CGSizeMake(12800,90060);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
