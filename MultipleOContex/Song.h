//
//  Song.h
//  MultipleOContex
//
//  Created by Ricardo Maqueda on 03/07/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Song : NSManagedObject

@property (nonatomic, retain) NSString * songTitle;
@property (nonatomic, retain) NSString * songAlbum;
@property (nonatomic, retain) NSString * songGenre;
@property (nonatomic, retain) NSNumber * songDuration;
@property (nonatomic, retain) NSData * songArtworkImage;

@end
