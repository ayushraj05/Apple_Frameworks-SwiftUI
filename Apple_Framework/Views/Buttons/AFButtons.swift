//
//  AFButtons.swift
//  Apple_Framework
//
//  Created by Ayush Rajpal on 22/07/25.
//

import SwiftUI

struct AFButtons: View {
    let title: String
    var body: some View {
        
        Text(title)
            .font(.system(size: 20, weight: .bold))
            .frame(width: 280, height: 50)
            .foregroundStyle(.white)
            .background(Color.pink)
            .cornerRadius(20)
        
        
    }
}

#Preview {
    AFButtons(title:"Learn More")
}
