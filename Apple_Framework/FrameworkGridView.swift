//
//  FrameworkGridView.swift
//  Apple_Framework
//
//  Created by Ayush Rajpal on 22/07/25.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let coloum: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        ZStack{
            LinearGradient(colors: [.customGray,.gray, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            LazyVGrid(columns: coloum){
                ForEach(MockData.frameworks, id: \.id){ framework in
                    FrameworkTitleView(name: framework.name, imageName: framework.imageName)
                }
                
            }
            .padding()
        }
        .padding(.top, 20)
        
        
    }
}

#Preview {
    FrameworkGridView()
}

struct FrameworkTitleView: View {
    let name : String
    let imageName : String
    var body : some View{
        VStack{
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90 )
                .scaledToFit()
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
    }
    
}
