//
//  Test.swift
//  CurrencyConverter
//
//  Created by Reem Alammari on 01/05/1445 AH.
//

import SwiftUI

struct Test: View {
    @State var itemSlected = 0
    @State var itemSlected2 = 1
    @State var amount: String = ""
    let currencies = ["RS","EUR"]
    var body: some View {
        NavigationView{
            
            Form{
                Section(header: Text("Convert a currency")){
                    TextField("Enter an amount", text: $amount)
                    .keyboardType(.decimalPad)
                    
                    Picker(selection: $itemSlected, label:Text("From")){
                        ForEach(0 ..< currencies.count){ index in
                            Text(self.currencies[index])
                            
                        }
                    }
                        Picker(selection: $itemSlected2, label:Text("To")){
                            ForEach(0 ..< currencies.count){ index in
                                Text(self.currencies[index])
                                
                            }
                    }
                }
                Section(header: Text("Conversion")){
                    Text("\(0) \(currencies[itemSlected2])")
                }
                
            }
        }
    }
}

#Preview {
    Test()
}
