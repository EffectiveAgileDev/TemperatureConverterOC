//
//  TemperatureConverterOCTests.m
//  TemperatureConverterOCTests
//
//  Created by Rod Claar on 4/21/12.
//  Copyright (c) 2012 Effective Agile Development LLC. All rights reserved.
//

#import "TemperatureConverterOC.h"
#import "TemperatureConverterOCTests.h"

@implementation TemperatureConverterOCTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
    temperatureConverter = [[TemperatureConverterOC alloc] init];
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}


- (void) testFtoCatWaterBoil
{
    //TemperatureConverterOC*  temperatureConverter = [[TemperatureConverterOC alloc] init];

    double boilF = 212.00;

    double boilC = [temperatureConverter convertFtoC:boilF];
    
    STAssertEquals(boilC, 100.00, @"Should return boilg point in Celsius");
}

- (void) testFtoCatWaterFreeze
{
    double freezeF = 32.0;
    
    double freezeC = [temperatureConverter convertFtoC:freezeF];
    
    STAssertEquals(freezeC, 0.00, @"Should return freezing pont in Celsius");
}

- (void) testCtoFatWaterFreeze
{
        
    double freezeC = 0.0;
    
    STAssertEquals([temperatureConverter convertCtoF:freezeC], 32.0, @"Should return 32"); 
}


@end
