//
//  BaseViewController.h
//  PXErrorDemo
//
//  Created by liaocanguang on 14-5-6.
//
//

#import <Cocoa/Cocoa.h>
#import "PXSourceList.h"

@interface BaseViewController : NSViewController<PXSourceListDataSource, PXSourceListDelegate>
@property (assign) IBOutlet PXSourceList *sourceList;
@end
