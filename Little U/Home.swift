//
//  SwiftUIView.swift
//  Little U
//
//  Created by Joel Ryerson on 7/25/20.
//  Copyright © 2020 Joel Ryerson. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Button(action: {
                           print("Button action")
                    }) {
                        HStack {
                            Image("Search")
                                    .resizable()
                                    .frame(width:15, height:15)
                                    .scaledToFit()
                                    .aspectRatio(contentMode: .fit)
                            Spacer()
                        }
                        .padding()
                        .foregroundColor(ColorManager.PrimaryColor)
                        .frame(width:86, height:38)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(ColorManager.PrimaryColor, lineWidth: 5)
                        )
                    }
                }.padding(.horizontal, 20)
                Spacer()
                VStack {
                    Image("Little U")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaledToFit()
                        .frame(height:38)
                }.padding(.horizontal, 20)
                
            }
            
            //return message
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
