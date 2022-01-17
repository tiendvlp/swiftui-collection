//
//  MainView.swift
//  Avocados
//
//  Created by Minh Tiến Đặng on 12/01/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Avocados")
                }
                .ignoresSafeArea(edges: .all)
            RecipesView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
                }
            RepeningView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Repening")
                }
            
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(Color.primary)
        .onAppear {
            let tabBarAppeareance = UITabBarAppearance()
            tabBarAppeareance.shadowColor = .gray // For line separator of the tab bar
            UITabBar.appearance().isTranslucent = false
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
