//
//  FrameworkTitleView.swift
//  Apple_Framework
//
//  Created by Ayush Rajpal on 23/07/25.
//

import SwiftUI

struct FrameworkTitleView: View {
        let framework : Framework
        var body : some View{
            VStack{
                Image(framework.imageName)
                    .resizable()
                    .frame(width: 90, height: 90 )
                    .scaledToFit()
                Text(framework.name)
                    .font(.title2)
                    .foregroundStyle(Color(.white))
                    .fontWeight(.semibold)
                    .scaledToFit()
                    .minimumScaleFactor(0.5)
            }
            .padding()
        }
        
    
}

#Preview {
    ZStack{
        Color.gray
            .ignoresSafeArea()
        FrameworkTitleView(framework: MockData.sampleFramework)
    }
    
        
}
