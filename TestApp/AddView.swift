//
//  Add.swift
//  TestApp
//
//  Created by 竹村　太喜 on 2021/02/17.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var name: String
    
    var body: some View {
        VStack {
            Spacer()
            Text("習慣を入力")
            TextField("習慣名",text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Spacer()
            HStack{
                Spacer()
                Button(action: {
                    self.name = ""
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("キャンセル")
                }
                Spacer()
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("OK")
                }
                .disabled(name.count == 0)
                Spacer()
            }
        }
    }
}

struct Add_Previews: PreviewProvider {
    static var previews: some View {
        AddView( name: Binding.constant(""))
            .environmentObject(NewList())
    }
}
