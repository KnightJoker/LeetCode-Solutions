//
//  EncodeAndDecodeTinyURL_535.m
//  LeetCode_Solutions
//
//  Created by Huni on 07/07/2017.
//  Copyright © 2017 KnightJoker. All rights reserved.
//



/*
    
    the description of question
 
 TinyURL is a URL shortening service where you enter a URL such as https://leetcode.com/problems/design-tinyurl and it returns a short URL such as http://tinyurl.com/4e9iAk.
 
 Design the encode and decode methods for the TinyURL service. There is no restriction on how your encode/decode algorithm should work. You just need to ensure that a URL can be encoded to a tiny URL and the tiny URL can be decoded to the original URL.
 
 
 // 题目的主要目的大概是想让你设计一个加密解密算法，这里可以直接输出参数到底AC的效果（不推荐），其次就是可以生成一个随机的字符串，使得其唯一映射到原URL，并建立map，保存从正常URL到randstr的映射，以及randstr到正常URL的映射即可。
 
 */

#import "EncodeAndDecodeTinyURL_535.h"

@implementation EncodeAndDecodeTinyURL_535

- (NSString *)encodeWithLongUrl:(NSString *)longUrl {

    return longUrl;
}


- (NSString *)encodeWithShortUrl:(NSString *)shortUrl {

    return shortUrl;
}

@end
