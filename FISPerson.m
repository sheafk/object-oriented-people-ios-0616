//
//  FISPerson.m
//  
//
//  Created by Shea Furey-King on 6/13/16.
//
//

#import "FISPerson.h"

@interface FISPerson ()

@property (readwrite) NSString *name;
@property (readwrite) NSUInteger ageInYears;
@property (readwrite) NSUInteger heighInInches;
@property (readwrite) NSMutableArray *skills;
@end

@implementation FISPerson

-(instancetype)init {
    self = [self initWithName:@"Shea" ageInYears:28 heightInInches:68];
    return self;
}

- (instancetype)initWithName: (NSString *)name
                  ageInYears: (NSUInteger)ageInYears {
    self = [self initWithName:name ageInYears:ageInYears heightInInches: 23];
    return self;
}

- (instancetype)initWithName: (NSString *)name
                  ageInYears: (NSUInteger)ageInYears
              heightInInches: (NSUInteger)heightInInches {
    self = [super init];
    if (self) {
        _name = name;
        _ageInYears = ageInYears;
        _heightInInches = heightInInches;
        _skills = [[NSMutableArray alloc]init];
    }
    return self;
}

- (NSString *)celebrateBirthday {
    
    NSUInteger newAge = self.ageInYears ++;
    NSLog(@"New Age: %lu", newAge);
    
    NSString *ordinal = [self ordinalForInteger:newAge];
    NSLog(@"Ordinal: %@", ordinal);
    
    NSString *birthdayMessage = [NSString stringWithFormat:@"HAPPY %lu%@ BIRTHDAY, %@!!!", self.ageInYears, ordinal.uppercaseString, self.name.uppercaseString];
    
    //capture the return of calling ordinalForInteger: with the self.ageInYears property submitted as the argument:
    
    NSLog(@"%@", birthdayMessage);
    
    return birthdayMessage;
}
- (NSString *)ordinalForInteger:(NSUInteger)integer {
    NSString *ordinal = @"th";
    if (integer % 10 == 1 && integer % 100 != 11) {
        ordinal = @"st";
    } else if (integer % 10 == 2 && integer % 100 != 12) {
        ordinal = @"nd";
    } else if (integer % 10 == 3 && integer % 100 != 13) {
        ordinal = @"rd";
    }
    return ordinal;
}

-(void)learnSkillBash {
        if (![self.skills containsObject:@"bash"]){
            [self.skills addObject:@"bash"];
    }
}

-(void)learnSkillXcode {
        if (![self.skills containsObject:@"Xcode"]){
        [self.skills addObject:@"Xcode"];
}
}

-(void)learnSkillObjectiveC {
        if (![self.skills containsObject:@"Objective-C"]){
            [self.skills addObject:@"Objective-C"];
    }
}

-(void)learnSkillObjectOrientedProgramming {
    
    if (![self.skills containsObject:@"Object-Oriented Programming"]){
        [self.skills addObject:@"Object-Oriented Programming"];
    }
}

-(void)learnSkillInterfaceBuilder {
    
    if (![self.skills containsObject:@"Interface Builder"]){
        [self.skills addObject:@"Interface Builder"];
    }
}


-(BOOL)isQualifiedTutor {
    
    if ([self.skills count] >= 4) {
        
        return YES;
    }
    else {
        return NO;
    }

}

@end
