//
//  ContentView.swift
//  TestApp
//
//  Created by 竹村　太喜 on 2021/02/16.
//

import SwiftUI



struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(listArray){ habit in
                        NavigationLink(
                            destination: SubView(list: habit),
                            label: {
                                
                                HStack {
                                    Text(habit.title)
                                    Text("\(habit.count)/30")
                                }
                                
                            })
                            
                    
                        
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
