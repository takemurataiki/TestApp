//
//  SubView.swift
//  TestApp
//
//  Created by 竹村　太喜 on 2021/02/16.
//

import SwiftUI

struct SubView: View {
    @Binding var list:HabitsData
//    @Binding var bCount: Int
    
    
//    @ObservedObject var newList = NewList()
    @EnvironmentObject var newList: NewList
    var body: some View {
        VStack {
            Spacer()
            Text(list.title)
            
            
            Spacer()
            
            Text(String(list.count))
//            Text(String(bCount))
            
           
            
            
            Spacer()
            
            
            Button(action:{
                
                list.count += 1
//                    bCount += 1
                
                
                        
                    }) {
                Text("習慣追加ボタン")
            }.disabled(list.count >= 30)
            
            
            Button(action:{
                list.count -= 1
                
                        }) {
                Text("習慣取消しボタン")
            }.disabled(list.count <= 0)
            
            
            
            Spacer()
        }
    }
}

struct SubView_Previews: PreviewProvider {
    static var previews: some View {
        SubView(list: Binding.constant(habitsArray[0])
//                , bCount: Binding.constant(2)
        )
            .environmentObject(NewList())
    }
}
