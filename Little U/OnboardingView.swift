//
//  OnboardingView.swift
//  Little U
//
//  Created by Joel Ryerson on 7/18/20.
//  Copyright © 2020 Joel Ryerson. All rights reserved.
//

import SwiftUI

struct OnboardingView: View {

    var subviews = [
        UIHostingController(rootView: Subview(imageString: "onboarding view 1")),
        UIHostingController(rootView: Subview(imageString: "onboarding view 2")),
        UIHostingController(rootView: Subview(imageString: "onboarding view 3"))
    ]

    var titles = ["Strengthen bonds", "Enrich language", "Spark imagination"]

    @State var currentPageIndex = 0
    
    var body: some View {
        VStack{
            VStack {
                Image("Little U")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaledToFit()
                    .frame(width: 263, height: 71.23)
                    .clipped()
                Text(titles[currentPageIndex])
                    .font(.custom("Love Is Complicated Again", size: 30))
                    .foregroundColor(ColorManager.DarkGray)
            }.padding()
            Spacer().frame(maxWidth: .infinity)
            VStack {
                PageControl(numberOfPages: subviews.count, currentPageIndex: $currentPageIndex)
                Button(action: {
                    print("Button action")
                }) {
                    Text("Get Started")
                        .frame(width: 218, height: 56.5)
                        .font(.custom("Poppins-SemiBold", size: 18))
                        .background(ColorManager.PrimaryColor)
                        .foregroundColor(.white)
                        .cornerRadius(68.75)
                }
                Button(action: {
                    print("Button action")
                }) {
                    Text("Already a member? Log in")
                        .font(.custom("Poppins-Medium", size: 14))
                        .foregroundColor(ColorManager.MediumGray)
                }.padding()
            }
        }.background(PageViewController(currentPageIndex: $currentPageIndex, viewControllers: subviews)
            .edgesIgnoringSafeArea(.all))
        
    }
}

#if DEBUG
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
#endif
