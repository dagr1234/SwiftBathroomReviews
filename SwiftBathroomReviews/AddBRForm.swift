//
//  AddBRForm.swift
//  SwiftBathroomReviews
//
//  Created by David Grossman on 12/26/22.
//

import Foundation
import SwiftUI

struct AddBRFormView: View {
    
    @State var buildingName : String = ""
    @State var tag          : String = ""
    @State var level        : String = ""
    @State var description  : String = ""


    var body: some View {

        VStack {
            Form {
                Section {
                    Text("Add a Bathroom or Water Fountain")
                        .bold()
                        .foregroundColor(Color.red)
                }
                
                Section ("What time is it") {
                    HStack {
                        Text("Date:")
                            .bold()
                            .foregroundColor(Color.blue)
                        
                        Text(Date.now, style: .date)
                            .bold()
                    }
                    
                    HStack {
                        Text("Time:")
                            .bold()
                            .foregroundColor(Color.blue)
                        Text(Date.now, style: .time)
                    }
                }
                
                Section ("Where are you") {
                    TextField("Name of Store or Building",
                                  text: $buildingName)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Simple Tag", text: $tag)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
            
                    TextField("Level (e.g.; Basement, 1st floor, etc.)", text: $level)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                Section ("Tell us about it") {
                    
                    TextField("Description", text: $description)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
//                Radio Button
//                FDA accessible
//
//                Gender --- M, W, Gender Neutral, Family
//
//                Rating Water Droplets --- 5 of them
//
//                Description (Optional)
//
                Section {
                    Text("Radio Button -- FDA Accessible")
                    Text("Radio -- M, F, Gender Neutral, Family")
                    Text ("Rating")
                }
                
                Section {
                    Text("Descripton")
                }
                
            }
        }
    }
}

struct AddBRFormView_Previews: PreviewProvider {
    static var previews: some View {
            AddBRFormView()
    }
}


