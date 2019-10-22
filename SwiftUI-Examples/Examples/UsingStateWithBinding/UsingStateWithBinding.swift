//
//  UsingStateWithBinding.swift
//  SwiftUI-Examples
//
//  Created by Manish Singh on 10/22/19.
//  Copyright © 2019 Manish Singh. All rights reserved.
//

import SwiftUI
import Combine

struct StateContainerView: View {
    @State var color: Color = .red
    var body: some View {
        VStack {
            Text("Container View")
                .fontWeight(.bold)
                .padding(.bottom, 50)
            MenuOptions(selectedColor: $color)
            Spacer()
            Text("Selected Color...")
            .padding(.top, 200)
            ChildView(selectedColor: $color)
                .frame(width: 300, height: 44, alignment: .center)
            Spacer()
        }

    }
}


struct MenuOptions: View {
    @Binding var selectedColor: Color
    var body: some View {
        HStack {
            Button(action: {
                self.selectedColor = .red
            }) {
                Text("Red")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            .background(Color.red)
            Button(action: {
                self.selectedColor = .blue
            }) {
                Text("Blue")
                .fontWeight(.bold)
                .foregroundColor(.white)
            }
            .background(Color.blue)
            Button(action: {
                self.selectedColor = .green
            }) {
                Text("Green")
                .fontWeight(.bold)
                .foregroundColor(.white)
            }
            .background(Color.green)
            Button(action: {
                self.selectedColor = .purple
            }) {
                Text("Purple")
                .fontWeight(.bold)
                .foregroundColor(.white)
            }
            .background(Color.purple)
        }
    }
}
struct ChildView: View {
    @Binding var selectedColor: Color
    var body: some View {
        Rectangle()
            .foregroundColor(selectedColor)

    }
}
