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
                    

        NavigationView{
            ZStack{
                LinearGradient(colors: [.customGray,.gray, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                
                ScrollView{
                    LazyVGrid(columns: coloum){
                        ForEach(MockData.frameworks, id: \.id){ framework in
                            FrameworkTitleView(framework: framework)
                        }
                        
                    }
                    .navigationTitle("Frameworks iOS")
                }
            }
            
        }
        
        
        
    }
}

#Preview {
    FrameworkGridView()
}

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
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
        .padding()
    }
    
}
