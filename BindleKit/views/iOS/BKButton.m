/*
 *  Bindle Binaries Objective-C Kit
 *  Copyright (c) 2011, Bindle Binaries
 *
 *  @BINDLE_BINARIES_BSD_LICENSE_START@
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions are
 *  met:
 *
 *     * Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in the
 *       documentation and/or other materials provided with the distribution.
 *     * Neither the name of Bindle Binaries nor the
 *       names of its contributors may be used to endorse or promote products
 *       derived from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
 *  IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 *  THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 *  PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL BINDLE BINARIES BE LIABLE FOR
 *  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 *  DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 *  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 *  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 *  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 *  OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 *  SUCH DAMAGE.
 *
 *  @BINDLE_BINARIES_BSD_LICENSE_END@
 */
/*
 *  BKButton.h - Creates a button with a color image
 */
#import "BKButton.h"

#import "BKButtonImages.h"

@implementation BKButton

/// Creates and initializes an instance of UIButton.
/// This method creates a UIButton with the button images based upon the specified color.
/// @param red    The red color channel of the button image represented as a CGFloat between 0.0 and 1.0
/// @param green  The green color channel of the button image represented as a CGFloat between 0.0 and 1.0
/// @param blue   The blue color channel of the button image represented as a CGFloat between 0.0 and 1.0
/// @param alpha  The alpha color channel of the button image represented as a CGFloat between 0.0 and 1.0
/// @return Returns a created instance of UIButton.
+ (UIButton *) buttonWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue
   alpha:(CGFloat)alpha
{
   BKButtonImages * buttonImages;
   UIButton       * button;

   buttonImages = [BKButtonImages imagesWithRed:red green:green blue:blue alpha:alpha];

   button = [UIButton buttonWithType:UIButtonTypeCustom];
   [button setBackgroundImage:[buttonImages createUIImageForState:BKButtonImageStateNormal]      forState:UIControlStateNormal];
   [button setBackgroundImage:[buttonImages createUIImageForState:BKButtonImageStateHighlighted] forState:UIControlStateHighlighted];
   button.frame = CGRectMake(0, 0, 78, 48);

   return(button);
}

@end