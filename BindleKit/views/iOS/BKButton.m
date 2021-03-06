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
/// This method creates a UIButton with the provided button images.
/// @param images    The button images to use with the UIButton
/// @return Returns a created instance of UIButton.
+ (UIButton *) buttonWithImages:(BKButtonImages *)images
{
   UIButton * button;
   button = [UIButton buttonWithType:UIButtonTypeCustom];
   [button setBackgroundImage:[images createUIImageForState:BKButtonImageStateNormal]      forState:UIControlStateNormal];
   [button setBackgroundImage:[images createUIImageForState:BKButtonImageStateHighlighted] forState:UIControlStateHighlighted];
   return(button);
}


/// Creates and initializes an instance of UIButton.
/// This method creates a UIButton with the button images based upon the specified color.
/// @param redChannel    The red color channel of the button image represented as a CGFloat between 0.0 and 1.0
/// @param greenChannel  The green color channel of the button image represented as a CGFloat between 0.0 and 1.0
/// @param blueChannel   The blue color channel of the button image represented as a CGFloat between 0.0 and 1.0
/// @param alphaChannel  The alpha color channel of the button image represented as a CGFloat between 0.0 and 1.0
/// @return Returns a created instance of UIButton.
+ (UIButton *) buttonWithRed:(CGFloat)redChannel green:(CGFloat)greenChannel
   blue:(CGFloat)blueChannel alpha:(CGFloat)alphaChannel
{
   BKButtonImages * images;
   images = [BKButtonImages imagesWithRed:redChannel green:greenChannel blue:blueChannel alpha:alphaChannel];
   return([BKButton buttonWithImages:images]);
}


/// Creates and initializes an instance of UIButton using 8 bit color channels
/// This method creates a UIButton with the images based upon the specified color represented as a 24 bit integer.
/// @param rgbColor   The color as an integer: ( (red << 16) | (green << 8) | (blue) )
/// @return Returns a created instance of UIButton.
+ (UIButton *) buttonWithRGB:(NSInteger)rgbColor
{
   return([BKButton buttonWithRGB:rgbColor alpha:1.0]);
}


/// Creates and initializes an instance of UIButton using 8 bit color channels
/// This method creates a UIButton with the images based upon the specified color represented as a 24 bit integer.
/// @param rgbColor      The color as an integer: ( (red << 16) | (green << 8) | (blue) )
/// @param alphaChannel  The alpha color channel of the button image represented as a CGFloat between 0.0 and 1.0
/// @return Returns a created instance of UIButton.
+ (UIButton *) buttonWithRGB:(NSInteger)rgbColor alpha:(CGFloat)alphaChannel
{
   CGFloat red   = ( ((CGFloat)((rgbColor >>  16) & 0xFF)) / 256.0);
   CGFloat green = ( ((CGFloat)((rgbColor >>   8) & 0xFF)) / 256.0);
   CGFloat blue  = ( ((CGFloat)((rgbColor >>   0) & 0xFF)) / 256.0);
   return([BKButton buttonWithRed:red green:green blue:blue alpha:alphaChannel]);
}


#pragma mark - Creating a Button with standard colors

/// A convenience method for creating a black button.
/// This method creates a UIButton with the images based upon a black color.
/// @return Returns a created instance of UIButton.
+ (UIButton *) blackButton
{
   return([BKButton buttonWithRGB:BKButtonColorBlack alpha:1.0]);
}


/// A convenience method for creating a blue button.
/// This method creates a UIButton with the images based upon a blue color.
/// @return Returns a created instance of UIButton.
+ (UIButton *) blueButton
{
   return([BKButton buttonWithRGB:BKButtonColorBlue alpha:1.0]);
}


/// A convenience method for creating a brown button.
/// This method creates a UIButton with the images based upon a brown color.
/// @return Returns a created instance of UIButton.
+ (UIButton *) brownButton
{
   return([BKButton buttonWithRGB:BKButtonColorBrown alpha:1.0]);
}


/// A convenience method for creating a cyan button.
/// This method creates a UIButton with the images based upon a cyan color.
/// @return Returns a created instance of UIButton.
+ (UIButton *) cyanButton
{
   return([BKButton buttonWithRGB:BKButtonColorCyan alpha:1.0]);
}


/// A convenience method for creating a dark gray button.
/// This method creates a UIButton with the images based upon a dark gray color.
/// @return Returns a created instance of UIButton.
+ (UIButton *) darkGrayButton
{
   return([BKButton buttonWithRGB:BKButtonColorDarkGray alpha:1.0]);
}


/// A convenience method for creating a gray button.
/// This method creates a UIButton with the images based upon a gray color.
/// @return Returns a created instance of UIButton.
+ (UIButton *) grayButton
{
   return([BKButton buttonWithRGB:BKButtonColorGray alpha:1.0]);
}


/// A convenience method for creating a green button.
/// This method creates a UIButton with the images based upon a green color.
/// @return Returns a created instance of UIButton.
+ (UIButton *) greenButton
{
   return([BKButton buttonWithRGB:BKButtonColorGreen alpha:1.0]);
}


/// A convenience method for creating a light gray button.
/// This method creates a UIButton with the images based upon a light gray color.
/// @return Returns a created instance of UIButton.
+ (UIButton *) lightGrayButton
{
   return([BKButton buttonWithRGB:BKButtonColorLightGray alpha:1.0]);
}


/// A convenience method for creating a magenta button.
/// This method creates a UIButton with the images based upon a magenta color.
/// @return Returns a created instance of UIButton.
+ (UIButton *) magentaButton
{
   return([BKButton buttonWithRGB:BKButtonColorMagenta alpha:1.0]);
}


/// A convenience method for creating a orange button.
/// This method creates a UIButton with the images based upon a orange color.
/// @return Returns a created instance of UIButton.
+ (UIButton *) orangeButton
{
   return([BKButton buttonWithRGB:BKButtonColorOrange alpha:1.0]);
}


/// A convenience method for creating a purple button.
/// This method creates a UIButton with the images based upon a purple color.
/// @return Returns a created instance of UIButton.
+ (UIButton *) purpleButton
{
   return([BKButton buttonWithRGB:BKButtonColorPurple alpha:1.0]);
}


/// A convenience method for creating a red button.
/// This method creates a UIButton with the images based upon a red color.
/// @return Returns a created instance of UIButton.
+ (UIButton *) redButton
{
   return([BKButton buttonWithRGB:BKButtonColorRed alpha:1.0]);
}


/// A convenience method for creating a white button.
/// This method creates a UIButton with the images based upon a white color.
/// @return Returns a created instance of UIButton.
+ (UIButton *) whiteButton
{
   return([BKButton buttonWithRGB:BKButtonColorWhite alpha:1.0]);
}


/// A convenience method for creating a yellow button.
/// This method creates a UIButton with the images based upon a yellow color.
/// @return Returns a created instance of UIButton.
+ (UIButton *) yellowButton
{
   return([BKButton buttonWithRGB:BKButtonColorYellow alpha:1.0]);
}


#pragma mark - Creating a Button with standard colors and alpha channels

/// A convenience method for creating a black button.
/// This method creates a UIButton with the images based upon a black color and the specified alpha channel.
/// @param alphaChannel  The alpha color channel of the button image represented as a CGFloat between 0.0 and 1.0
/// @return Returns a created instance of UIButton.
+ (UIButton *) blackButtonWithAlpha:(CGFloat)alphaChannel
{
   return([BKButton buttonWithRGB:BKButtonColorBlack alpha:alphaChannel]);
}


/// A convenience method for creating a blue button.
/// This method creates a UIButton with the images based upon a blue color and the specified alpha channel.
/// @param alphaChannel  The alpha color channel of the button image represented as a CGFloat between 0.0 and 1.0
/// @return Returns a created instance of UIButton.
+ (UIButton *) blueButtonWithAlpha:(CGFloat)alphaChannel
{
   return([BKButton buttonWithRGB:BKButtonColorBlue alpha:alphaChannel]);
}


/// A convenience method for creating a brown button.
/// This method creates a UIButton with the images based upon a brown color and the specified alpha channel.
/// @param alphaChannel  The alpha color channel of the button image represented as a CGFloat between 0.0 and 1.0
/// @return Returns a created instance of UIButton.
+ (UIButton *) brownButtonWithAlpha:(CGFloat)alphaChannel
{
   return([BKButton buttonWithRGB:BKButtonColorBrown alpha:alphaChannel]);
}


/// A convenience method for creating a cyan button.
/// This method creates a UIButton with the images based upon a cyan color and the specified alpha channel.
/// @param alphaChannel  The alpha color channel of the button image represented as a CGFloat between 0.0 and 1.0
/// @return Returns a created instance of UIButton.
+ (UIButton *) cyanButtonWithAlpha:(CGFloat)alphaChannel
{
   return([BKButton buttonWithRGB:BKButtonColorCyan alpha:alphaChannel]);
}


/// A convenience method for creating a dark gray button.
/// This method creates a UIButton with the images based upon a dark gray color and the specified alpha channel.
/// @param alphaChannel  The alpha color channel of the button image represented as a CGFloat between 0.0 and 1.0
/// @return Returns a created instance of UIButton.
+ (UIButton *) darkGrayButtonWithAlpha:(CGFloat)alphaChannel
{
   return([BKButton buttonWithRGB:BKButtonColorDarkGray alpha:alphaChannel]);
}


/// A convenience method for creating a gray button.
/// This method creates a UIButton with the images based upon a gray color and the specified alpha channel.
/// @param alphaChannel  The alpha color channel of the button image represented as a CGFloat between 0.0 and 1.0
/// @return Returns a created instance of UIButton.
+ (UIButton *) grayButtonWithAlpha:(CGFloat)alphaChannel
{
   return([BKButton buttonWithRGB:BKButtonColorGray alpha:alphaChannel]);
}


/// A convenience method for creating a green button.
/// This method creates a UIButton with the images based upon a green color and the specified alpha channel.
/// @param alphaChannel  The alpha color channel of the button image represented as a CGFloat between 0.0 and 1.0
/// @return Returns a created instance of UIButton.
+ (UIButton *) greenButtonWithAlpha:(CGFloat)alphaChannel
{
   return([BKButton buttonWithRGB:BKButtonColorGreen alpha:alphaChannel]);
}


/// A convenience method for creating a light gray button.
/// This method creates a UIButton with the images based upon a light gray color and the specified alpha channel.
/// @param alphaChannel  The alpha color channel of the button image represented as a CGFloat between 0.0 and 1.0
/// @return Returns a created instance of UIButton.
+ (UIButton *) lightGrayButtonWithAlpha:(CGFloat)alphaChannel
{
   return([BKButton buttonWithRGB:BKButtonColorLightGray alpha:alphaChannel]);
}


/// A convenience method for creating a magenta button.
/// This method creates a UIButton with the images based upon a magenta color and the specified alpha channel.
/// @param alphaChannel  The alpha color channel of the button image represented as a CGFloat between 0.0 and 1.0
/// @return Returns a created instance of UIButton.
+ (UIButton *) magentaButtonWithAlpha:(CGFloat)alphaChannel
{
   return([BKButton buttonWithRGB:BKButtonColorMagenta alpha:alphaChannel]);
}


/// A convenience method for creating a orange button.
/// This method creates a UIButton with the images based upon a orange color and the specified alpha channel.
/// @param alphaChannel  The alpha color channel of the button image represented as a CGFloat between 0.0 and 1.0
/// @return Returns a created instance of UIButton.
+ (UIButton *) orangeButtonWithAlpha:(CGFloat)alphaChannel
{
   return([BKButton buttonWithRGB:BKButtonColorOrange alpha:alphaChannel]);
}


/// A convenience method for creating a purple button.
/// This method creates a UIButton with the images based upon a purple color and the specified alpha channel.
/// @param alphaChannel  The alpha color channel of the button image represented as a CGFloat between 0.0 and 1.0
/// @return Returns a created instance of UIButton.
+ (UIButton *) purpleButtonWithAlpha:(CGFloat)alphaChannel
{
   return([BKButton buttonWithRGB:BKButtonColorPurple alpha:alphaChannel]);
}


/// A convenience method for creating a red button.
/// This method creates a UIButton with the images based upon a red color and the specified alpha channel.
/// @param alphaChannel  The alpha color channel of the button image represented as a CGFloat between 0.0 and 1.0
/// @return Returns a created instance of UIButton.
+ (UIButton *) redButtonWithAlpha:(CGFloat)alphaChannel
{
   return([BKButton buttonWithRGB:BKButtonColorRed alpha:alphaChannel]);
}


/// A convenience method for creating a white button.
/// This method creates a UIButton with the images based upon a white color and the specified alpha channel.
/// @param alphaChannel  The alpha color channel of the button image represented as a CGFloat between 0.0 and 1.0
/// @return Returns a created instance of UIButton.
+ (UIButton *) whiteButtonWithAlpha:(CGFloat)alphaChannel
{
   return([BKButton buttonWithRGB:BKButtonColorWhite alpha:alphaChannel]);
}


/// A convenience method for creating a yellow button.
/// This method creates a UIButton with the images based upon a yellow color and the specified alpha channel.
/// @param alphaChannel  The alpha color channel of the button image represented as a CGFloat between 0.0 and 1.0
/// @return Returns a created instance of UIButton.
+ (UIButton *) yellowButtonWithAlpha:(CGFloat)alphaChannel
{
   return([BKButton buttonWithRGB:BKButtonColorYellow alpha:alphaChannel]);
}

@end
