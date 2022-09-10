//
//  ContentView.swift
//  cw3-task 1
//
//  Created by Abdulaziz Albalool on 09/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var value = ""
    @State var grade = ""
    var body: some View {
      
            
            
           
       
            VStack{
               
                
                Text("حاسبة الدرجات")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    
                Image("calc")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                
                
                
            TextField("ادخل درجتك", text:$value)
                    .background(Color.white)
                
                
       Text("احسب درجتي")
                    .background(Color.yellow)
                    .cornerRadius(200)
                    .onTapGesture {
                        let v = Int(value) ?? 0
                        if v >= 90 {
                     grade =  "ممتاز"
                        }  else if v >= 80 && v < 90 { grade = "جيد جدا"}
                        else if v >= 70 && v < 80 { grade = "جيد"}
                        else if v >= 60 && v < 70 { grade = "مقبول" }
                        else if v < 60 { grade = "راسب"}
                    
                    }
                    
                Spacer()
          
                Text("لقد حصلت على درجة")
            Spacer()
                Text(grade)
                    .font(.largeTitle)
                  
                
                Spacer()
          
                    
                
              
                
        }
            
            .background(Color.blue.opacity(0.4))
            .ignoresSafeArea()
        
        
        
       
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}


