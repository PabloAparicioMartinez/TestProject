//
//  ToolbarComponent.swift
//  TestProject
//
//  Created by Pablextu on 12/9/24.
//

import SwiftUI

struct ToolbarComponent: View {
    
    @Environment(\.presentationMode) var presentationMode
    let constants = Constants()

        var body: some View {
            
            VStack {
                
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        HStack {
                            Image(systemName: "arrow.backward")
                                .foregroundStyle(.darkBlue1)
                            Text("NQ")
                                .font(Font.custom(constants.robotoBlack, size: 18))
                                //.font(.system(size: 18))
                                .fontWeight(.semibold)
                                .foregroundStyle(.darkBlue1)
                        }
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarTitleDisplayMode(.inline)
        }
}

#Preview {
    ToolbarComponent()
}
