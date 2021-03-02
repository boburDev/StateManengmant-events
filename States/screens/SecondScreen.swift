//
//  SecondScreen.swift
//  States
//
//  Created by Boburmirzo on 3/2/21.
//

import SwiftUI

struct SecondScreen: View {
//    @State var count = 0
//    @ObservedObject var setting: UserSettngs
    @EnvironmentObject var setting: UserSettngs
    
    var body: some View {
        Text("Your count is \(setting.count)")
            .padding()
            .font(.system(size: 17))
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen()
    }
}
