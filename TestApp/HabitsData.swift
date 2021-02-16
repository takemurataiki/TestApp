//
//  HabitsData.swift
//  TestApp
//
//  Created by 竹村　太喜 on 2021/02/16.
//

import Foundation

var listArray:[ListData] = makeData()


struct ListData: Identifiable {
    var id:Int
    var title:String
    var count:Int
    
}

func makeData() -> [ListData] {
    var dataArray:[ListData] = []
    dataArray.append(ListData(id:1, title:"起床",count: 1))
    dataArray.append(ListData(id:2, title:"朝食",count: 3))
    dataArray.append(ListData(id:3, title:"昼食",count: 14))
    dataArray.append(ListData(id:4, title:"夕食",count: 13))
    dataArray.append(ListData(id:5, title:"就寝",count: 9))
    
    return dataArray
}
