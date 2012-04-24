//
//  TemperatureConverterOC.m
//  TemperatureConverterOC
//
//  Created by Rod Claar on 4/21/12.
//  Copyright (c) 2012 Effective Agile Development LLC. All rights reserved.
//

#import "TemperatureConverterOC.h"

@implementation TemperatureConverterOC
    
-(double) convertFtoC:(double) temperatureF
{
    double temperatureC;
    
    temperatureC = (temperatureF - 32.0) * (5.0 / 9.0);
    
    return temperatureC;
}

-(double) convertCtoF:(double) temperatureC
{
    double temperatureF;
    
    temperatureF = (temperatureC * 9.0 / 5.0) + 32;
    
    return temperatureF;
}

@end
