//
//  DragView.swift
//  SwiftUI-Examples
//
//  Created by Manish Singh on 10/19/19.
//  Copyright © 2019 Manish Singh. All rights reserved.
//

import SwiftUI

struct DragViewWrapper: View {
    @State var viewMiddlePoint: CGPoint = CGPoint(x: UIScreen.main.bounds.size.width / 2, y: UIScreen.main.bounds.size.height / 2)
    var body: some View {
        DragView()
            .frame(width: 200, height: 100, alignment: .center)
            .gesture(
                DragGesture(minimumDistance: 0.0, coordinateSpace: .global)
                    .onChanged { dragValue in
                        self.viewMiddlePoint = dragValue.location
                }
        )
            .position(viewMiddlePoint)
    }
}

struct DragView: View {
    var body: some View {
        Text("Drag and drop view")
            .fontWeight(.heavy)
        .padding(.top, 20)
        .padding(.bottom, 20)
        .padding(.leading, 20)
        .padding(.trailing, 20)
        .foregroundColor(.yellow)
        .background(Color.black)
    }
}

struct DragView_PreviewProvider: PreviewProvider {
    static var previews: some View {
        DragView()
    }
}
