//
//  ContentView.swift
//  TestApp
//
//  Created by 竹村　太喜 on 2021/02/16.
//

import SwiftUI



struct ContentView: View {
    @State var isShow = false
    @State var list:ListData
    @State var habitsData:HabitsData
    
    
    @ObservedObject var newList = NewList()
//    @EnvironmentObject var newList: NewList
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(habitsArray){ habit in
                            NavigationLink(destination: SubView(list: Binding.constant(habit))) {
                                HStack {
                                    Text(habit.title)
                                    
                                    Text("\(habit.count)/30")
                                }
                                
                            }
                           
                        }
                    }
                    .sheet(isPresented: $isShow, onDismiss: {
                        if (self.newList.newTitle != "") {
                            self.newList.titles.append(self.newList.newTitle)
                            self.newList.newTitle = ""
                        }
                    }) {
                        AddView(name: self.$newList.newTitle)
                    }
                    Button(action:{
                            self.isShow.toggle()
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(list: listArray[0], habitsData: habitsArray[0])
            .environmentObject(NewList())
    }
}
