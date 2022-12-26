//
//  ContentView.swift
//  Splash
//
//  Created by David Grossman on 12/24/22.
//

import SwiftUI
import SQLite3



// import NavigationStack


class User: ObservableObject {
    
}

struct ContentView: View {
    
        
    @ObservedObject var user = User()
    
    
    @State var showSplash = false
    let maxGameThreshold : Int   = 200
    let gamesToDelete    : Int   = 10

    // Create the database table to track the high score
    func setupDatabase() {
    }
    
    
    var body: some View {

        ZStack {
            
            NavigationView {
                
            
                VStack (spacing: 10) {
                    Text("Welcome to Splash!")
                        .font(.title).fontWeight(.heavy).foregroundColor(Color.blue).padding(.top, 67.0)
                    
                HStack () {
                    Text("Find a Bathroom or Water Fountain FAST!!")
                        .font(.headline).fontWeight(.heavy).foregroundColor(Color.red).multilineTextAlignment(.center).padding(0.0)
                
                    
                    NavigationLink(
                        destination: AddBRFormView())
                                      {
                                        SBButtonView()
                                      }.frame(width : 44, height : 44)
                                    .buttonStyle(NeumorphicButtonStyle(bgColor : Colors.LightGreen))
                }
                    
                SplashMapView()
                    .padding(.bottom)
                    .padding(.top)
                    .frame(width: 400.0, height: 800.0)
                
                } // Vstack
            } // Nav view
        } // zstack
       
    } // body
                
                   
} // end content view



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
}
