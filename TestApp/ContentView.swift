//
//  ContentView.swift
//  TestApp
//
//  Created by 竹村　太喜 on 2021/02/16.
//

import SwiftUI



struct ContentView: View {
    @State var isModal = false
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(listArray){ habit in
                            Button(action: {
                                isModal = true
                            }) {
                                HStack {
                                
                                Text(habit.title)
                                Text("\(habit.count)/30")
                                }
                        }.sheet(isPresented: $isModal) { //isMdalがtrueになったら開く
                            SubView(list: habit)
                        }
                    }
                }
                List {
                    ForEach(listArray){ habit in
                        NavigationLink(destination: SubView(list: habit)) {
                            HStack {
                                
                                Text(habit.title)
                                Text("\(habit.count)/30")
                            }
                            
                        }
                       
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
