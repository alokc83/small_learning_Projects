//
//  appDetails.h
//  recipe-1.9
//
//  Created by Katie on 3/24/13.
//  Copyright (c) 2013 Mapps Lab. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface appDetails : NSObject

@property(strong, nonatomic) NSString *name;
@property(strong, nonatomic) NSString *description;

-(id)initWithName:(NSString *)name description:(NSString *)descr;


@end
