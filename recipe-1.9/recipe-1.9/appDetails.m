//
//  appDetails.m
//  recipe-1.9
//
//  Created by Katie on 3/24/13.
//  Copyright (c) 2013 Mapps Lab. All rights reserved.
//

#import "appDetails.h"

@implementation appDetails

-(id)initWithName:(NSString *)name description:(NSString *)descr
{
    self = [super init];
    if(self)
    {
        self.name = name;
        self.description = descr;
    }
    return self;
}

@end
