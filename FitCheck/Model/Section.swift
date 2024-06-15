//
//  Sections.swift
//  FitCheck
//
//  Created by Yaroslav Sokolov on 14/05/2024.
//

import Foundation
import UIKit


struct Section {
    
    var frame: CGRect
    var images: [UIImage]
    
    init(frame: CGRect, images: [UIImage]) {
        self.frame = frame
        self.images = images
    }
    
    
    mutating func addImage(_ image: UIImage) {
        images.append(image)
    }
    
    mutating func removeImage(atIndex index: Int){
        if index >= (images.count - 1) {
            images.remove(at: index)
        }
    }
    
}
