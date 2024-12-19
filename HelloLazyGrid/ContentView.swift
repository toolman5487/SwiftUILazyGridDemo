//
//  ContentView.swift
//  HelloLazyGrid
//
//  Created by Willy Hsu on 2024/12/18.
//

import SwiftUI

struct ContentView: View {
    let columns = [GridItem(.flexible()),GridItem(.flexible())]
    let balls = ["🏀","⚽️","🏈","⚾️","🥎","🎾","🏐"]
    var body: some View {
        ScrollView(){
            LazyVGrid(columns: columns) {
                ForEach(balls, id: \.self) { ball in
                    Text(ball)
                        .font(.system(size: 60))
                        .frame(width: 100, height: 150)
                        .overlay {
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(.black,lineWidth: 1)
                        }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
