CDiCloudIcon
============

a cloud image for iOS drawn in Core Graphics, no image files required. You're welcome.

This is a simple subclass of UIView, uses a UIBezierPath to draw arcs and then closes the path.
Default colour is white border with no fill.

If you'd like to use it in your iOS app feel free, just give me/it a quick mention somewhere in the app, settings or about page and drop me a line to let em know.
Basically just share the love, it'd be nice if it ended up being ubiquitous.

You can use the default initializer inherited from UIView: initWithFrame:(CGRect)rect
This will use defaults fill colour of white, stroke colour of white, line width of 3 and not fill the shape.
However I've also added an additional init method:

-(id) initWithFrame:(CGRect)rect withFill:(NSArray *)fill withStroke:(NSArray *)stroke andlineWidth:(CGFloat)width shouldFill:(BOOL)shouldFill

The frame parameter is a simple CGRect. REQUIRED.

The NSArray parameters for fill and stroke should contain 4 elements, NSNumber objects containing floats that hold a value between 0.0 and 1.0
in order to give values for Red, Green, Blue and Alpha in that order. OPTIONAL (passing nil will cause the class to use default values of white and full alpha).

The CGFloat parameter for line width is a float value. OPTIONAL (passing nill uses a default value of 3.0).

The BOOL for shouldFill is REQUIRED.

