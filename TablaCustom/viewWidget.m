//
//  viewWidget.m
//  TablaCustom
//
//  Created by Henry AT on 12/7/15.
//  Copyright © 2015 Apps4s. All rights reserved.
//

#import "viewWidget.h"

@implementation viewWidget

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


// Remember IBOutlet for myCustomView and link with File's Owner

- (instancetype)initWithCoder:(NSCoder *)coder
{
  self = [super initWithCoder:coder];
  if (self) {
    [self mySetup];
  }
  return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if (self) {
    [self mySetup];
  }
  return self;
}

-(void)mySetup {
  // 300 x 150
  [[NSBundle mainBundle] loadNibNamed:@"viewWidget" owner:self options:nil];
  [self addSubview:self.myCustomView];
  
  self.myCustomView.translatesAutoresizingMaskIntoConstraints = NO;
  
  
  // Esto si funciona:
/*
  //creamos el diccionario
  NSDictionary * vistas = @{@"vista1":self.myCustomView};
  //Definimos alto
  NSArray * constraintsAlto = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[vista1(150)]"
                                                                      options:0
                                                                      metrics:nil
                                                                        views:vistas];
  // Definimos el Ancho
  NSArray *constraintsAncho = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[vista1(300)]"
                                                                      options:0
                                                                      metrics:nil
                                                                        views:vistas];
  [self addConstraints:constraintsAlto];
  [self addConstraints:constraintsAncho];
*/
  
  // Pero esto funciona, muchisimo mejor:
  [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_myCustomView(300)]|" options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:NSDictionaryOfVariableBindings(_myCustomView, self)]];
  
  // height and edges   V:|[self.view(100)]|
  [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_myCustomView(150)]|" options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:NSDictionaryOfVariableBindings(_myCustomView, self)]];
  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  

  
}


@end
