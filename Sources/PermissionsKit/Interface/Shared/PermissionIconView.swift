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

@available(iOSApplicationExtension, unavailable)
public class PermissionIconView: UIView {
    
    // MARK: - Views
    
    private var customView: UIView?
    private var customImageView = UIImageView()
    private let iconMaskView = UIImageView()
    private let iconImageView = UIImageView()
    
    // MARK: - Init
    
    init() {
        super.init(frame: .zero)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        addSubview(iconImageView)
        iconImageView.isHidden = true
        
        addSubview(customImageView)
        customImageView.isHidden = true
    }
    
    // MARK: - Layout
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        iconImageView.frame = bounds
        iconMaskView.frame = bounds
        customImageView.frame = bounds
        customView?.frame = bounds
    }
    
    // MARK: - Helpers
    
    public func setPermission(_ kind: Permission.Kind) {
        iconImageView.image = Images.permission_icon(for: kind)
        iconImageView.contentMode = .scaleAspectFit
        
        iconMaskView.image = Images.app_icon_mask
        iconMaskView.contentMode = .scaleAspectFit
        iconImageView.mask = iconMaskView
        
        iconImageView.isHidden = false
        customImageView.isHidden = true
        customView?.isHidden = true
    }
    
    public func setCustomView(_ view: UIView) {
        if let customView = self.customView {
            customView.removeFromSuperview()
        }
        
        addSubview(view)
        self.customView = view
        
        iconImageView.isHidden = true
        customImageView.isHidden = true
        customView?.isHidden = false
    }
    
    public func setCustomImage(_ image: UIImage) {
        customImageView.contentMode = .scaleAspectFit
        customImageView.image = image
        
        iconImageView.isHidden = true
        customImageView.isHidden = false
        customView?.isHidden = true
    }
}
