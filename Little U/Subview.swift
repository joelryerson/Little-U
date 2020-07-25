//
//  Subview.swift
//  Little U
//
//  Created by Joel Ryerson on 7/24/20.
//  Copyright © 2020 Joel Ryerson. All rights reserved.
//

import SwiftUI

struct Subview: View {
    
    var imageString: String
    
    var body: some View {
        Image(imageString)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .scaledToFill()
        .clipped()
        .frame(width: 414, height: 896, alignment: .center)
        .edgesIgnoringSafeArea([.all])
    }
}

#if DEBUG
struct Subview_Previews: PreviewProvider {
    static var previews: some View {
        Subview(imageString: "strengthen bonds")
    }
}
#endif
