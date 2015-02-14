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

extension UIViewController {
    
    func addLoadingMask() {
        self.view.addLoadingMask()
    }
    func removeLoadingMask() {
        self.view.removeLoadingMask()
    }
}

extension UIView {
    
    func addLoadingMask() {
        let indicatorTag = 102030405060708090
        var indicatorView = self.viewWithTag(indicatorTag) as? LoadingIndicatorView
        if indicatorView == nil {
            indicatorView = LoadingIndicatorView(frame: CGRectMake((self.frame.size.width - 40.0)/2, (self.frame.size.height - 40.0)/2, 40.0, 40.0))
            indicatorView!.tag = indicatorTag
            indicatorView?.autoresizingMask = UIViewAutoresizing.FlexibleLeftMargin | UIViewAutoresizing.FlexibleRightMargin | UIViewAutoresizing.FlexibleTopMargin | UIViewAutoresizing.FlexibleBottomMargin
            self.addSubview(indicatorView!)
        }
    }
    func removeLoadingMask() {
        let indicatorTag = 102030405060708090
        var indicatorView = self.viewWithTag(indicatorTag) as? LoadingIndicatorView
        if indicatorView != nil {
            indicatorView?.removeFromSuperview()
            indicatorView = nil
        }
    }
}
