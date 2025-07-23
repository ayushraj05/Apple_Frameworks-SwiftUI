//
//  CrossButtonView.swift
//  Apple_Framework
//
//  Created by Ayush Rajpal on 23/07/25.
//

import SwiftUI

struct CrossButtonView: View {
    @Binding var isShowingDetailView: Bool
    var body: some View {
        HStack{
            Spacer()
            Button{
                isShowingDetailView.toggle()
            }label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
                
            }
        }
        .padding()
    }
}

#Preview {
    CrossButtonView(isShowingDetailView: .constant(false))
}
