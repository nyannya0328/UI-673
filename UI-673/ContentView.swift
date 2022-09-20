//
//  ContentView.swift
//  UI-673
//
//  Created by nyannyan0328 on 2022/09/20.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("Icon") var activeIcon : String  = "AppIcon"
    var body: some View {
        NavigationStack{
            Picker(selection: $activeIcon, content: {
                
                let customIcons : [String] = ["AppIcon","AppIcon 1","AppIcon 2"]
                
                ForEach(customIcons ,id:\.self){icon in
                    
                    Text(icon)
                        .tag(icon)
                }
                
            }, label: {
                
            
                
                
            })
            .contentShape(Rectangle())
            .pickerStyle(.segmented)
            .padding(.horizontal)
            .navigationTitle("App Icon")
        }
        .onChange(of: activeIcon) { newValue in
            
            UIApplication.shared.setAlternateIconName(newValue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

