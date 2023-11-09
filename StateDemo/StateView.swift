//
//  StateView.swift
//  StateDemo
//
//  Created by Thongchai Subsaidee on 8/11/23.
//

/*
1. @State:
When data is specific to a particular view and does not need to be shared across different views, we use @State property wrapper. When the value of a @State property changes, SwiftUI automatically updates the view to reflect the new value.
*/

import SwiftUI

struct StateView_: View {
    @State private var counter = 0
    var body: some View {
        VStack {
            Text("Couter: \(counter)")
            Button("Increment") {
                counter += 1
            }
        }
    }
}

#Preview {
    StateView_()
}
