//
//  ContentView.swift
//  CurrencyConverter
//
//  Created by Reem Alammari on 30/04/1445 AH.
//

import SwiftUI



    struct ContentView: View {
  
        @StateObject var stateObject  = CurrencyConvert()
        @State private var favoriteState = 1

        var body: some View {
           
            NavigationStack{
                VStack{
                    Divider()
                        .background(
                            LinearGradient(colors: [.green, .blue], startPoint: .leading, endPoint: .trailing)
                        )
                        .opacity(0.5)
                        .shadow(radius: 10, y:5)
                    
                }
                .navigationTitle("CurrencyConvertor")
                .navigationBarTitleDisplayMode(.large)
                
                VStack( spacing: 30.0) {
                    Picker("States", selection: $favoriteState){
                        Text("Riyal to Euro").tag(0)
                        
                        Text("Euro to Riyal").tag(1)
                    }
                    VStack{
                        Text("Enter the price:")
                            .bold()
                            .frame(maxWidth: .infinity , alignment: .leading)
                        TextField(" ", value: $stateObject.number , format: .number)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .border(Color.black)
                    }
                    
                    VStack{
                        Text("Enter the exchange:")
                            .bold()
                            .frame(maxWidth: .infinity , alignment: .leading)
                        TextField(" ", value: $stateObject.exchange , format: .number)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .border(Color.black)
                    }
                    
                    
                    Button("Convert") {
                        
                        stateObject.result = Int(stateObject.number) * Int(stateObject.exchange)
                        
                    }
                    if favoriteState == 0{
                        HStack {
                            Text(" \(stateObject.result )")
                            Text("Euro")
                            Image("Euro")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50 , height: 30)
                            
                              //  .padding()
                         //    .clipShape(Circle())
                                
                        }.font(.title)
                           
                    }else{
                        
                        HStack {
                            Text(" \(stateObject.result )")
                            Text("Riyals")
                            Image("Saudi")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50 , height: 30)
                              //  .padding()
                                
                               
                               
                        } .font(.title)
                            
                    }
                    
                    Spacer()
                    
                }.padding()
                
            }
      
    }
}

#Preview {
    ContentView()
}
