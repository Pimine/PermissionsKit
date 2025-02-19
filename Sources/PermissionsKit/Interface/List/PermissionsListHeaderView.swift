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

#if os(iOS)
import UIKit

class PermissionsListHeaderView: UITableViewHeaderFooterView {
    
    let titleLabel = UILabel()
    
    static var id = "PermissionsListHeaderView"
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        titleLabel.numberOfLines = 0
        titleLabel.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        titleLabel.textColor = UIColor.Compability.secondaryLabel
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(titleLabel)
        
        let leadingAnchorConstraint = titleLabel.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor)
        leadingAnchorConstraint.priority = .init(900)
        leadingAnchorConstraint.isActive = true
        
        let trailingAnchorConstraint = titleLabel.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor)
        trailingAnchorConstraint.priority = .init(900)
        trailingAnchorConstraint.isActive = true
        
        let topAnchorConstraint = titleLabel.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor, constant: -2)
        topAnchorConstraint.priority = .init(900)
        topAnchorConstraint.isActive = true
        
        let bottomAnchorConstraint = titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -25)
        bottomAnchorConstraint.priority = .init(900)
        bottomAnchorConstraint.isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
#endif
