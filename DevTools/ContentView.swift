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
            Sidebar()
            EmptyView()
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



struct Sidebar: View {
    @ObservedObject var settingsCategories = CategoriesModel()
    @State private var selectedCategory: Category?
    var body: some View {
        List() {
            NavigationLink(
                    destination: UnixTimeConverterView(),
                    label: {
                        HStack {
                            Image(systemName: "folder")
                            Text("Unix Timestamp Conversion")
                        }
            })
            NavigationLink(
                   destination: ColouPicker(),
                    label: {
                        HStack {
                            Image(systemName: "folder")
                            Text("Color Picker")
                        }
            })
        }
        .background(.ultraThinMaterial)
        .listStyle(SidebarListStyle())
        .frame(minWidth: 200)
    }
}

// Second Column
struct SettingsListView: View {
    var settingsCategory: Category
    @State private var selectedSetting: Setting?
    var body: some View {
        Text("Test1")
        .navigationTitle(settingsCategory.name)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
