//
//  ContentView.swift
//  Shared
//
//  Created by Milan Tamang on 2/2/22.
//

import SwiftUI

struct ContentView: View {
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        VStack {
            HelloText()
            ViewImage()
            TextField("Username", text: $username)
                .padding()
                .background()
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            SecureField("Password", text: $password)
                .padding()
                .background()
                .cornerRadius(5.0)
                .padding(.bottom,  20)
            Text("LOGIN")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static  var previews: some View  {
        ContentView()
    }
}

// for text
struct HelloText: View {
    var body: some View {
        Text("Shah Rukh Khan")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
    }
}
// for image
struct ViewImage: View {
    var body: some View {
            Image("srk")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
    }
}

