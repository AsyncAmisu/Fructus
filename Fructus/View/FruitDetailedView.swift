//
//  FruitDetailedView.swift
//  Fructus
//
//  Created by Alexander Snitko on 3.05.22.
//

import SwiftUI

struct FruitDetailedView: View {
    // MARK: - Properties
    
    var fruit: Fruit
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // Header
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        // Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // Nutrients
                        FruitNutrientsView(fruit: fruit)
                        
                        // Subheadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // Link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VStack
                .navigationBarTitleDisplayMode(.inline)
                .navigationTitle(fruit.title)
                .navigationBarHidden(true)
            } //: Scroll
            .edgesIgnoringSafeArea(.top)
        } //: Navigation
    }
}

// MARK: - Preview

struct FruitDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailedView(fruit: fruitsData[0])
            .previewDevice("iPhone 11")
    }
}
