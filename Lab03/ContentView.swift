//
//  ContentView.swift
//  Lab03
//
//  Created by Abe Howder on 9/6/24.
//

import SwiftUI

struct ContentView: View {
    let restaurants = ["McDonald's", "Arby's", "Wendy's", "Pizza Hut", "Culver's"]

    var body: some View {
        VStack {
            ForEach(restaurants, id: \.self) { restaurant in
                RestaurantView(name: restaurant, isFavorite: false)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#Preview {
    ContentView()
}
import SwiftUI

struct RestaurantView: View {
    var name: String
    @State var isFavorite: Bool

    var body: some View {
        HStack {
            Text(name)
                .font(.largeTitle)
                .foregroundColor(.white)
            Spacer()
            Text(isFavorite ? "👍" : "👎")
                .font(.largeTitle)
        }
        .padding(50)
        .background(Color.blue)
        .cornerRadius(20)
        .onTapGesture {
            isFavorite.toggle()
        }
    }
}

