//
//  ViewController.m
//  AlleyCatMapper
//
//  Created by Sydney Richardson on 4/13/15.
//  Copyright (c) 2015 Sydney Richardson. All rights reserved.
//

#import "ACMMapViewController.h"
#import <MapKit/MapKit.h>

@interface ACMMapViewController () <UISearchBarDelegate, MKMapViewDelegate>

@property (strong, nonatomic) IBOutlet MKMapView *map;

@end

@implementation ACMMapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // add the search bar to the parent navigation bar
    UISearchBar *searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(-5.0, 0.0, 320.0, 44.0)];
    searchBar.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    UIView *searchBarView = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 310.0, 44.0)];
    searchBarView.autoresizingMask = 0;
    searchBar.delegate = self;
    [searchBarView addSubview:searchBar];
    self.navigationItem.titleView = searchBarView;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
