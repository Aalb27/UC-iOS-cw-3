//
//  ContentView.swift
//  cw3
//
//  Created by Abdulaziz Albalool on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var counter1 = 0
    @State var counter2 = 0
    @State var counter3 = 0

    var body: some View {
        VStack{
           
            ExtractedView(text: "استغفر الله العظيم", counterr: $counter1)
            
            
            
            ExtractedView(text: "سبحان الله وبحمده", counterr: $counter2)
                
           
           
            
            
                ExtractedView(text: "سبحان الله العظيم", counterr: $counter3)
        }
        
        
    }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    var text: String
    @Binding var counterr: Int
    var body: some View {
        HStack {
            Text(text)
                    .padding()
                Spacer()
            Spacer()
            Spacer()
            
            ZStack{
                Circle()
                    .frame(width: 200, height: 100)
                    .foregroundColor(.green)
                Text("\(counterr)")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                    .padding()
                    .onTapGesture {
                        counterr += 1
                    }
            }
            Spacer()
        }.ignoresSafeArea()
    }
}
