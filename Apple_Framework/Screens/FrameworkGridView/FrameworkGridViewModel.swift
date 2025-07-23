//
//  FrameworkGridViewModel.swift
//  Apple_Framework
//
//  Created by Ayush Rajpal on 22/07/25.
//

import SwiftUI

class FrameworkGridViewModel : ObservableObject {
    var SelectedFramework: Framework?{
        didSet {
            isShowingDetailView.toggle()
        }
    }
    @Published var isShowingDetailView : Bool = false
    
    let coloum: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
}
