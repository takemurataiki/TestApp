//
//  HabitsData.swift
//  TestApp
//
//  Created by 竹村　太喜 on 2021/02/16.
//

import Foundation

var listArray:[ListData] = makeData()
var habitsArray:[HabitsData] = makeHabits()

struct ListData: Identifiable {
    var id = UUID()
    var title:String = ""
    var count:Int = 0
    
    
}

struct HabitsData: Identifiable {
    var id = UUID()
    var title:String = ""
    var count:Int = 0
    
    
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

func makeHabits() -> [HabitsData] {
    var habitArray:[HabitsData] = []
    
    habitArray.append(HabitsData(title:"@1個目の習慣",count: 11))
    habitArray.append(HabitsData(title:"@2個目の習慣",count: 22))
    habitArray.append(HabitsData(title:"@3個目の習慣",count: 33))
    habitArray.append(HabitsData(title:"@4個目の習慣",count: 44))
    habitArray.append(HabitsData(title:"@5個目の習慣",count: 55))
    
    
    return habitArray
}

class NewList: ObservableObject {
    
    
    
    @Published var titles: [String] = [] //タイトル
    @Published var subTitles: [String] = [] // サブタイトル
    @Published var newTitle = "" //テキスト初期化
    
    @Published var isShow: Bool = false
    
    func addHabitTitle() {
        titles.append(newTitle)
        newTitle = ""
    }
    
    @Published var counts:[Int] = []
    @Published var newCount = 0
    
    func addHabitCount() {
        counts.append(newCount)
        newCount = 0
    }
    
    
    @Published var habitsArray:[HabitsData] = makeHabits()
    
    
    
    
    
    

    
}

