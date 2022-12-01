//
//  UIView+Ext.swift
//  Content-Rich App
//
//  Created by Fahri Novaldi on 30/11/22.
//

import UIKit

extension UIView {
    static let loadingViewTag = 24276528
    
    func showLoading() {
        var loading = viewWithTag(UIView.loadingViewTag) as? UIActivityIndicatorView
        
        if loading == nil {
            loading = UIActivityIndicatorView(style: .medium)
        }
        
        loading?.translatesAutoresizingMaskIntoConstraints = false
        loading!.startAnimating()
        loading!.hidesWhenStopped = true
        loading?.tag = UIView.loadingViewTag
        addSubview(loading!)
        loading?.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        loading?.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }

    func stopLoading() {
        let loading = viewWithTag(UIView.loadingViewTag) as? UIActivityIndicatorView
        loading?.stopAnimating()
        loading?.removeFromSuperview()
    }
}
