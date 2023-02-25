//
//  RatingUIView.swift
//  Pixel Art
//
//  Created by Alexandar Hristov on 23.02.23.
//

import SwiftUI

struct RatingUIView: View {
    
    var body: some View {
        Color.accentColor
            .ignoresSafeArea()
            .overlay(
                VStack(alignment: .center, spacing: 30) {
                    Text("Username's")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("DarkPurple"))
                    
                    Image("ExampleIMG")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .overlay(Rectangle().stroke())
                    
                    HStack(spacing: 140) {
                        Button(action: {
                            
                        }) {
                            ZStack {
                                Circle()
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(Color("PalePurple"))
                                
                                Image(systemName: "heart")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                //                                .foregroundColor()
                            }
                        }
                        
                        Button(action: {
                            // Go to the next picture
                        }) {
                            // Image(systemName: "arrowshape.right")
                            //     .resizable()
                            //     .frame(width: 50, height: 50)
                            //     .foregroundColor(.gray)
                            
                            // Make a circle and put arrowshape.right in the center
                            ZStack {
                                Circle()
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(Color("PalePurple"))
                                
                                Image(systemName: "arrowshape.right")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.white)
                            }
                            
                        }
                    }
            })
    }
}

struct RatingUIView_Previews: PreviewProvider {
    static var previews: some View {
        RatingUIView()
    }
}
