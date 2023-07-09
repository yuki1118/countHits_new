//
//  ContentView.swift
//  countHits
//
//  Created by 吉田侑己 on 2023/07/09.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
        var body: some View {
            NavigationStack{
                VStack(alignment: .center) {
                    Text("ボタンが\(tapCount)回押されたよ")
                    Button(action: {
                        tapCount += 1
                    }, label: {
                        Image(systemName: "button.programmable")
                            .colorInvert()
                            .frame(width: 50, height: 50)
                    })
                    NavigationLink {
                        settingView()
                    } label: {
                        Image(systemName: "gearshape")
                            .font(.headline)
                            .cornerRadius(10)
                            .padding()
                    }
                    .navigationTitle("メイン画面")
                }
            }
        }
    }

struct settingView: View {
    var body: some View {
        Text("SecondView").font(.title)
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
