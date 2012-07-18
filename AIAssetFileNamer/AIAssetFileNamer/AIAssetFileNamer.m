//
//  AIAssetFileNamer.m
//  AIAssetFileNamer
//
//  Created by Arun Israel on 7/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AIAssetFileNamer.h"
#import <AssetsLibrary/AssetsLibrary.h>

@implementation AIAssetFileNamer

+ (NSString *) convertAssetToFileNameViaDateProperty:(ALAsset *) asset
{
    NSDate *assetDate = [asset valueForProperty:ALAssetPropertyDate];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy-MM-dd HH.mm.ss"];
    return [NSString stringWithFormat:@"%@.%@",[dateFormat stringFromDate:assetDate],[self determineFileExtensionForAsset:asset]];
}

+ (NSString *) determineFileExtensionForAsset:(ALAsset *) asset
{
    NSString *assetType = [asset valueForProperty:ALAssetPropertyType];

    if (assetType == ALAssetTypePhoto) {        
        return @".jpg";
    }
    else if (assetType == ALAssetTypeVideo) {
        return @".mov";
    }

    [NSException raise:@"Unrecognized Asset Type" format:@"Asset:%@ with type:%@ is not supported.",asset,assetType];
    return @"";
}

@end
