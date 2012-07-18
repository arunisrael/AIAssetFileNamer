//
//  AIAssetFileNamer.h
//  AIAssetFileNamer
//
//  Created by Arun Israel on 7/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ALAsset;

@interface AIAssetFileNamer : NSObject

// converts asset using ALAssetPropertyDate to write file of name yyyy-MM-dd HH.mm.ss.EXT
+ (NSString *) convertAssetToFileNameViaDateProperty:(ALAsset *) asset;


// TODO
// test cases with image, movie, and unknown property type

@end