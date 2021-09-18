//
//  ContentView.swift
//  Timer
//
//  Created by khawlah khalid on 18/09/2021.
//
import SwiftUI

struct ContentView: View {

    
    
    
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    @State var seconds : Float = 0.0
    

    var body: some View {
        
        

        VStack{

                Text(String(format: "%.1fs",seconds))
                .bold()
           
                    .font(.system(size: 100,weight: .heavy).italic())
                    
                .foregroundColor(.white)
                .shadow(radius: 5)
                .padding(.top,150)
                
                
                .onReceive(timer){ input in
                    self.seconds += 0.1
                }
//

            
            Spacer()

            Button(action: { self.seconds += 1.00}, label: {
                Text("+1s")
                    .font(.system(size: 40).italic())
                    .bold()
                    
                    
                    .foregroundColor(.white)
                    
            })
           
            .frame(width: 170, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(Color.green)
            .cornerRadius(20.0)
            .shadow(radius: 5)
            .padding()
 
            
            
            
            Text("Made By : Khawlah and Wahaj 🤍")
                .font(.caption)
                .foregroundColor(.white)
                .padding(.bottom,20)
                
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
       

        .padding([.top,.bottom],20)
           
        
        .background(Color(    #colorLiteral(red: 0.9948754907, green: 0.7713648677, blue: 0.007642585784, alpha: 1) ))
       //.background(Color(red: 255, green: 255, blue: 51))
        .ignoresSafeArea()
    }
    
    
    
    
    }




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
