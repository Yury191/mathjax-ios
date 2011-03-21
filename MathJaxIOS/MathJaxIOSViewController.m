//
//  MathJaxIOSViewController.m
//  MathJaxIOS
//
//  Created by Harish Narayanan on 3/21/11.
//  Copyright 2011 Harish Narayanan. All rights reserved.
//

#import "MathJaxIOSViewController.h"

@implementation MathJaxIOSViewController

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)loadMathJaxDemo:(UIButton *)sender
{
    NSLog(@"Standard demo loaded");

    UIWebView *htmlView = [[UIWebView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 480.0)];
    [htmlView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"sample" ofType:@"html" inDirectory:@"MathJax/test"]isDirectory:NO]]];
    [htmlView setScalesPageToFit:YES];
	[self.view addSubview:htmlView];
	[htmlView release];
}

@end
