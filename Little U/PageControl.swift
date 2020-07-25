//
//  PageControl.swift
//  Little U
//
//  Created by Joel Ryerson on 7/24/20.
//  Copyright © 2020 Joel Ryerson. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

struct PageControl: UIViewRepresentable {
    
    var numberOfPages: Int
    
    @Binding var currentPageIndex: Int
    
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberOfPages
        control.currentPageIndicatorTintColor = UIColor.init(named: "PrimaryColor")
        control.pageIndicatorTintColor = UIColor.init(named: "MediumGray")

        return control
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPageIndex
    }
    
}
