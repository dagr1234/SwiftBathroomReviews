//
//  AddBRForm.swift
//  SwiftBathroomReviews
//
//  Created by David Grossman on 12/26/22.
//

import Foundation
import SwiftUI

struct AddBRFormView: View {
    
    
    @State var rating               : Int = 1
    @State var buildingName         : String = ""
    @State var tag                  : String = ""
    @State var level                : String = ""
    @State var description          : String = ""
    @State var genders              : String = ""
    @State var handicappedFlag      : Bool = false
    @State var quality              : String = ""
    @State var waterFountainRating  : Int = 1
    @State var waterFountainQuality : Int = 1
    
    
    @State private var selected = 1
    @State private var isMale = false
    @State private var isFemale = false
    @State private var isNeutral = false
    @State private var isFamily = false
    @State private var isWaterFountain = false
    @State private var saved = false
    
    
    

    var body: some View {

        VStack {
            Form {
                Section ("What time is it") {
                    HStack {
                        Text("Date:")
                            .bold()
                            .foregroundColor(Color.blue)
                        
                        Text(Date.now, style: .date)
                            .bold()
                    
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
                    
                    TextEditor(text: $description)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                Section ("Type") {
                    HStack {
                        Toggle("Male", isOn: $isMale)
                            .toggleStyle(.button)
                            .tint(.mint)
                        
                        Toggle("Female", isOn: $isFemale)
                            .toggleStyle(.button)
                            .tint(.mint)
                        
                        Toggle("Neutral", isOn: $isNeutral)
                            .toggleStyle(.button)
                            .tint(.mint)
                        
                        Toggle("Family", isOn: $isFamily)
                            .toggleStyle(.button)
                            .tint(.mint)
                        
                    }
                }
                
                Section ("Handicapped Accessible") {
                    Picker(selection: $handicappedFlag, label: Text("Gender")) {
                                Text("Yes").tag(1)
                                Text("No").tag(2)
                        }
                    .pickerStyle(.segmented)
                }
                
                Section ("Quality") {
                
                    RatingView(rating: $rating)
                    
                }
                
                Section ("Water Fountain") {
                    
                
                    Toggle("No water fountain", isOn: $isWaterFountain)
                        .toggleStyle(.button)
                        .tint(.mint)
                    
                    if (!isWaterFountain) {
                        RatingView(rating: $waterFountainRating)
                    
                    }
                }
                
                Section ("Save Data") {
                    
                    Toggle("Save", isOn: $saved)
                        .toggleStyle(.button)
                        .tint(.mint)
                    
                    if (saved) {
                        Text("Bathroom and Water Fountain Data Saved. Thank you!")
                    }
                    
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


