// The MIT License (MIT)
// Copyright © 2020 Sparrow Code LTD (https://sparrowcode.io, hello@sparrowcode.io)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import UIKit

public class DeniedPermissionAlertTexts: NSObject {
    
    public var titleText = Texts.denied_alert_title
    public var descriptionText = Texts.denied_alert_description
    public var actionText = Texts.denied_alert_action
    public var cancelText = Texts.denied_alert_cancel
    
    public override init() {
        super.init()
    }
    
    public init(title: String, description: String, action: String, cancel: String) {
        self.titleText = title
        
        self.descriptionText = description
        self.actionText = action
        self.cancelText = cancel
        super.init()
    }
    
    public static var `default`: DeniedPermissionAlertTexts {
        return DeniedPermissionAlertTexts()
    }
}
