//
//  HGButtonView.swift
//  SmartHebrewFlashcards
//
//  Created by David Grossman on 11/22/20.
//  Copyright © 2020 David Grossman. All rights reserved.
//


import SwiftUI

struct SBButtonView: View {
   
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 30, height: 30)
                .foregroundColor(.green)
            Image(systemName: "plus")
                .foregroundColor(.white)
                .imageScale(.small)
                .frame(width: 44, height: 44)
        }
    }
}

struct SBButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SBButtonView()
    }
}
