//
//  ContentView.swift
//  TabViewTest
//
//  Created by Duncan Champney on 1/6/24.
//

import SwiftUI

class AppState: ObservableObject {
    @Published var message: String = "Starting message"
}

struct ContentView: View {
    
    @ObservedObject var appState: AppState = AppState()
    var body: some View {
        VStack {
            TabView {
                Tab1View(appState: appState)
                    .tabItem {
                        Image(systemName: "info.circle")
                        Text("Tab 1")
                    }
                Tab2View(appState: appState)
                    .tabItem {
                        Image(systemName: "info.circle")
                        Text("Tab 2")
                    }
            }
            Text(appState.message)
        }
        .padding()
    }
}

struct Tab1View: View {
    
    var appState: AppState
    var body: some View {
        VStack {
            Text("Tab 1")
            Button {
                print("In tab 1 button action")
                appState.message = "Tab 1 button pressed"
            } label: {
                Text("Button")
            }
            .keyboardShortcut(.defaultAction)
        }
    }
}

struct Tab2View: View {
    var appState: AppState

    var body: some View {
        VStack {
            Text("Tab 2")
            Button {
                print("In tab 2 button action")
                appState.message = "Tab 2 button pressed"
            } label: {
                Text("Button")
            }
            .keyboardShortcut(.defaultAction)
        }
    }
}

#Preview {
    ContentView()
}
