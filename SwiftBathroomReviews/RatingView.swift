//
//  SwiftUIView.swift
//  SwiftBathroomReviews
//
//  Created by David Grossman on 12/26/22.
//

import SwiftUI

struct RatingView: View {
    
    @Binding var rating: Int
    var label = ""
    var maximumRating = 5
    var offImage = Image(systemName: "drop")
    var onImage = Image(systemName: "drop.fill")
    var offColor = Color.gray
    var onColor = Colors.WaterBlue
    
    var body: some View {
        
        HStack {
            if label.isEmpty == false {
                Text(label)
            }

            ForEach(1..<maximumRating + 1, id: \.self) { number in
                image(for: number)
                    .foregroundColor(number > rating ? offColor : onColor)
                    .onTapGesture {
                        rating = number
                    }
            }
        }
    }
    
    
    // add the stars to the rating

    func image(for number: Int) -> Image {
        if number > rating {
            return offImage ?? onImage
        } else {
            return onImage
        }
    }
    
}



struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: .constant(4))
    }
}
