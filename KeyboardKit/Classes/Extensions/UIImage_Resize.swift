//
//  UIImage_Resize.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2016-01-21.
//  Copyright © 2016 Daniel Saidi. All rights reserved.
//

import UIKit

public extension UIImage {
    
    
    // MARK: Public functions
    
    public func imageByResizingToWidth(points: CGFloat) -> UIImage {
        let width = points * scale
        let ratio = width / size.width
        let height = size.height * ratio
        let newSize = CGSize(width: width, height: height)
        return resizedImage(newSize, quality: .High)
    }
    
    public func imageByResizingToHeightInPoints(pointHeight: CGFloat) -> UIImage {
        let height = pointHeight * scale
        let ratio = height / size.height
        let width = size.width * ratio
        let newSize = CGSize(width: width, height: height)
        return resizedImage(newSize, quality: .High)
    }
    
    
    
    // MARK: Private functions
    
    private func resizedImage(newSize:CGSize, quality:CGInterpolationQuality) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(newSize, false, scale)
        drawInRect(CGRect(origin: CGPointZero, size: newSize))
        let result = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return result
    }

}
