//
//  EnvironmentObjectView.swift
//  StateDemo
//
//  Created by Thongchai Subsaidee on 8/11/23.
//

/*
 2. @EnvironmentObject
 When data is to be shared across multiple views without the need of manual passing of data through constructor, we use @EnvironmentObject property wrapper. It lets you inject a value that can be accessed by any child view in hierarchy. You need to set the environment object on a higher level using .environmentObject(_:) modifier.
 */

import SwiftUI

class Userdata: ObservableObject {
    @Published var username = "SwiftUI"
}

struct EnvironmentObjectView: View {
    @EnvironmentObject var userData: Userdata
    
    var body: some View {
        Text("Hello, World! \(userData.username)")
    }
}

#Preview {
    EnvironmentObjectView()
        .environmentObject(Userdata())
}
