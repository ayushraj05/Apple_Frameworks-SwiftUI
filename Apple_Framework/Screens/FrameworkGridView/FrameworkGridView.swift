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
                    
        NavigationView{
            ZStack{
                LinearGradient(colors: [.customGray,.gray, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                
                ScrollView{
                    LazyVGrid(columns: viewModel.coloum){
                        ForEach(MockData.frameworks, id: \.id){ framework in
                            FrameworkTitleView(framework: framework)
                                .onTapGesture {
                                    viewModel.SelectedFramework = framework
                                }
                        }
                        
                    }
                    .navigationTitle("Frameworks iOS")
                    .sheet(isPresented: $viewModel.isShowingDetailView){
                        FrameworkDetailView(framework: viewModel.SelectedFramework!, isShowingDetailView: $viewModel.isShowingDetailView)
                    }
                }
            }
            
        }
        
        
        
    }
}

#Preview {
    FrameworkGridView()
}
