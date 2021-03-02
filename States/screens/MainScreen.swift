//
//  MainScreen.swift
//  States
//
//  Created by Boburmirzo on 3/2/21.
//

import SwiftUI

struct MainScreen: View {
//    @State var count = 0
//    @ObservedObject var setting = UserSettngs()
    @EnvironmentObject var setting: UserSettngs
    var body: some View {
        NavigationView{
            VStack{
                Text("Your count is \(setting.count)")
                    .padding()
                    .font(.system(size: 17))
                HStack{
                    Button(action: {
//                        self.count -= 1
                        setting.count -= 1
                    }, label: {
                        Text("Decrease").padding()
                            .frame(width: 120)
                            .background(Color.red)
                            .foregroundColor(.white)
                            
                    }).disabled(setting.count >= 1 ? false : true)
                    
                    Button(action: {
//                        self.count += 1
                        setting.count += 1
                    }, label: {
                        Text("Increase").padding()
                            .frame(width: 120)
                            .background(Color.blue)
                            .foregroundColor(.white)
                    })
                }
                
                NavigationLink(
                    destination: SecondScreen(),
                    label: {
                        Text("Open second screen").padding()
                   })

            }
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
            .environmentObject(UserSettngs())
    }
}
