//
//  HabitsData.swift
//  TestApp
//
//  Created by 竹村　太喜 on 2021/02/16.
//

import Foundation

var listArray:[ListData] = makeData()


struct ListData: Identifiable {
    var id = UUID()
    var title:String
    var count:Int
    
}

func makeData() -> [ListData] {
    var dataArray:[ListData] = []
    dataArray.append(ListData(title:"1個目の習慣",count: 1))
    dataArray.append(ListData(title:"2個目の習慣",count: 2))
    dataArray.append(ListData(title:"3個目の習慣",count: 3))
    dataArray.append(ListData(title:"4個目の習慣",count: 4))
    dataArray.append(ListData(title:"5個目の習慣",count: 5))
    dataArray.append(ListData(title:"6個目の習慣",count: 6))
    
    return dataArray
}
