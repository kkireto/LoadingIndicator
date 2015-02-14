//The MIT License (MIT)
//
//Copyright (c) 2014 Kireto
//
//Permission is hereby granted, free of charge, to any person obtaining a copy of
//this software and associated documentation files (the "Software"), to deal in
//the Software without restriction, including without limitation the rights to
//use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
//the Software, and to permit persons to whom the Software is furnished to do so,
//subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in all
//copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

import UIKit

class LoadingIndicatorView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor(white: 0.0, alpha: 0.85)
        self.layer.cornerRadius = 4.0
        self.layer.masksToBounds = true
        
        var indicatorView: UIActivityIndicatorView = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.White)
        let indicatorSize: CGSize = indicatorView.frame.size
        indicatorView.frame = CGRectMake((self.frame.size.width - indicatorSize.width)/2, (self.frame.size.height - indicatorSize.height)/2, indicatorSize.width, indicatorSize.height)
        indicatorView.autoresizingMask = UIViewAutoresizing.FlexibleLeftMargin | UIViewAutoresizing.FlexibleRightMargin | UIViewAutoresizing.FlexibleTopMargin | UIViewAutoresizing.FlexibleBottomMargin
        self.addSubview(indicatorView)
        indicatorView.startAnimating()
    }
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
