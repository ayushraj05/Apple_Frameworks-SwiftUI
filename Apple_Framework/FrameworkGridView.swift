//
//  FrameworkGridView.swift
//  Apple_Framework
//
//  Created by Ayush Rajpal on 22/07/25.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
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
