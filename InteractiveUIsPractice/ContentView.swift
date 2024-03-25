//
//  ContentView.swift
//  InteractiveUIsPractice
//
//  Created by scholar on 3/25/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var name = ""
    @State var zodiacSign = ""
    @State private var birthday = Date()
    @State private var presentAlert = false
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Example App")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
            Spacer()
            Text("What is your name?")
                .font(.title)
            
            TextField("", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
                .disableAutocorrection(true)
            
            Spacer()
            
            Text("What is your birthday?")
                .font(.title)
            
            //Spicy Challenge
            DatePicker(
                "Select Your Birthday: ",
                selection: $birthday,
                displayedComponents: [.date]
            )
            
            Spacer()
            
            Text("What is your zodiac sign?")
                .font(.title)
            
            TextField("", text: $zodiacSign)
                .autocapitalization(.none)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            
            Spacer()
            
            HStack{
                Spacer()
                Button("Submit Info") {
                    presentAlert = true
                    
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.purple)
                Spacer()
            }
            
        }
        .padding()
        .alert("Hi \(name)! Thank you for submitting your info!", isPresented: $presentAlert, actions: {})
    }
}

#Preview {
    ContentView()
}
