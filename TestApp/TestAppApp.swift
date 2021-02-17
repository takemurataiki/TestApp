//
//  TestAppApp.swift
//  TestApp
//
//  Created by 竹村　太喜 on 2021/02/16.
//

import SwiftUI

@main
struct TestAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(list: listArray[0], habitsData: habitsArray[0])
        }
    }
}
