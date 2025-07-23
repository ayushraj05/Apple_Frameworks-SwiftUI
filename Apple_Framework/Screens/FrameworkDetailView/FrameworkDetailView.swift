//
//  FrameworkDetailView.swift
//  Apple_Framework
//
//  Created by Ayush Rajpal on 22/07/25.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework : Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingWebView = false
    var body: some View {
        ZStack{
            LinearGradient(colors: [.white,.customGray,.black], startPoint: .topLeading, endPoint: .bottomTrailing)
            VStack{
                CrossButtonView(isShowingDetailView: $isShowingDetailView)
                Spacer()
                
                FrameworkTitleView(framework: framework)
                
                Text(framework.description)
                    .font(.body)
                    .foregroundStyle(Color(.white))
                    .padding()
                
                Spacer()
                
                Button{
                    isShowingWebView = true
                    
                } label: {
                    AFButtons(title: "Learn More")
                        
                }
                .padding()
            }
            .fullScreenCover(isPresented: $isShowingWebView){
                SafariView(url: URL(string :framework.urlString) ?? URL(string: "https://www.google.com")!)
            }
        }
        .ignoresSafeArea()
        
        
    }
}

#Preview {
    FrameworkDetailView(framework : MockData.sampleFramework, isShowingDetailView: .constant(false))
}
