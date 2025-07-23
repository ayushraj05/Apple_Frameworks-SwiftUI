//
//  FrameworkGridView.swift
//  Apple_Framework
//
//  Created by Ayush Rajpal on 22/07/25.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    var body: some View {
                    
        NavigationStack{
            ZStack{
                LinearGradient(colors: [.customGray,.gray, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                
                ScrollView{
                    LazyVGrid(columns: viewModel.coloum){
                        ForEach(MockData.frameworks, id: \.id){ framework in
                            NavigationLink(value: framework){
                                FrameworkTitleView(framework: framework)
                            }
                        }
                        
                    }
                    .navigationTitle("Frameworks iOS")
                    
                }
                
                .navigationDestination(for: Framework.self) { framework in
                    FrameworkDetailView(framework: framework)
                }
                
            }
            
        }
        .tint(.black)
        
        
        
    }
}

#Preview {
    FrameworkGridView()
}
