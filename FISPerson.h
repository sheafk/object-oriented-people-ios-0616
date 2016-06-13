//
//  FISPerson.h
//  
//
//  Created by Shea Furey-King on 6/13/16.
//
//

#import <Foundation/Foundation.h>

@interface FISPerson : NSObject

@property (readonly) NSString *name;
@property (readonly) NSUInteger ageInYears;
@property (readonly) NSUInteger heightInInches;
@property (readonly) NSMutableArray *skills;


-(instancetype)init;

- (instancetype)initWithName: (NSString *)name
                  ageInYears: (NSUInteger)ageInYears;


- (instancetype)initWithName: (NSString *)name
                  ageInYears: (NSUInteger)ageInYears
              heightInInches: (NSUInteger)heightInInches;


- (NSString *)celebrateBirthday;

-(void)learnSkillBash;

-(void)learnSkillXcode;

-(void)learnSkillObjectiveC;

-(void)learnSkillObjectOrientedProgramming;

-(void)learnSkillInterfaceBuilder;

-(BOOL)isQualifiedTutor;

@end



