//
//  FrameworkDetailView.swift
//  Apple_Framework
//
//  Created by Ayush Rajpal on 22/07/25.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework : Framework
    var body: some View {
        ZStack{
            LinearGradient(colors: [.white,.customGray,.black], startPoint: .topLeading, endPoint: .bottomTrailing)
            VStack{
                HStack{
                    Spacer()
                    Button{
                        
                    }label: {
                        Image(systemName: "xmark")
                            .foregroundStyle(Color(.label))
                            .imageScale(.large)
                            .frame(width: 44, height: 44)
                        
                    }
                }
                .padding()
                Spacer()
                
                FrameworkTitleView(framework: framework)
                
                Text(framework.description)
                    .font(.body)
                    .foregroundStyle(Color(.white))
                    .padding()
                
                Spacer()
                
                Button{
                    
                } label: {
                    AFButtons(title: "Learn More")
                        
                }
            }
        }
        
        
    }
}

#Preview {
    FrameworkDetailView(framework : MockData.sampleFramework)
}
