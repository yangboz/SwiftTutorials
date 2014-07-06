//
//  GameScene.m
//  SpriteKitSimpleGame
//
//  Created by yangboz on 14-7-6.
//  Copyright (c) 2014年 GODPAPER. All rights reserved.
//

#import "GameScene.h"

@interface GameScene()
@property (nonatomic) SKSpriteNode * player;
@end

@implementation GameScene

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        
        // 2
        NSLog(@"Size: %@", NSStringFromCGSize(size));
        
        // 3
        self.backgroundColor = [SKColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
        
        // 4
        self.player = [SKSpriteNode spriteNodeWithImageNamed:@"player"];
        self.player.position = CGPointMake(self.player.size.width/2,self.player.size.height/2);
        [self addChild:self.player];
        
    }
    return self;
}

@end
