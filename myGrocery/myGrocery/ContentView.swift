//
//  ContentView.swift
//  myGrocery
//
//  Created by Danah A on 29/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var grocery=["banana","apple","tomato"]
    @State var grocerypic = ["banana","apple","tomato"]
    @State var newItemAdded = ""
    
    var body: some View {
        VStack{
            List(grocery, id:\.self){item in
                HStack{
                    Image(item)
                        .resizable().frame(width: 60, height: 60)
                    Text(item)
                }
                            }
            HStack{
                Button{grocery.append(newItemAdded)
                    grocerypic.append(newItemAdded)
                    }label:{
                    Image(systemName:"plus")
                        .frame(width: 50, height: 50)
                        .background(Color.green)
                        .cornerRadius(20)
                        .foregroundColor(Color.white)
                }
                TextField("New item",text: $newItemAdded)
                Button{grocery.remove(at: 0)
                    }label:{
                    Image(systemName:"minus")
                        .frame(width: 50, height: 50)
                        .background(Color.red)
                        .cornerRadius(20)
                        .foregroundColor(Color.white)
                    }.padding()
                
            }
        }
        
            }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
