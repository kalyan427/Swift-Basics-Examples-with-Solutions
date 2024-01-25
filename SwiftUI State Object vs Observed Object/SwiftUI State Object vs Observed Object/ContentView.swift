//
//  ContentView.swift
//  SwiftUI State Object vs Observed Object
//
//  Created by kalyan . on 1/10/24.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var heroNames: [String] = []
    
    init() {
        defaultHeroNames()
    }
    
    func defaultHeroNames() {
        heroNames.append("Thor")
        heroNames.append("IronMan")
    }
    
    func addNewHeroName() {
        heroNames.append("Captain America")
        print(heroNames)
    }
}

struct ContentView: View {
    
    @ObservedObject var viewModel: ViewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.heroNames, id: \.self) { heroName in
                Text(heroName)
            }
            .navigationTitle("Marvel Heroes")
            .toolbar(content: {
                Button {
                    viewModel.addNewHeroName()
                } label: {
                    Image(systemName: "plus")
                }
            })
        }
    }
}

#Preview {
    ContentView()
}
