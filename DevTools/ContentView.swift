//
//  ContentView.swift
//  DevTools
//
//  Created by Manikandan on 31/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ListView()
            MainView()
        }
        .toolbar{
            ToolbarItem(placement: .navigation){
                Button(action: toggleSideBar) {
                    Image(systemName: "sidebar.left")
                }
            }
        }
        .frame(minWidth: 600, minHeight: 400)
    }
    
    func toggleSideBar(){
        NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
    }
}

struct ListView : View {
    var body: some View{
        List{
           Text("1 Test")
            Text("2 Test")
            Text("3 Test")
        }
    }
}

struct MainView : View {
    var body: some View{
        Text("Mian List")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
