//
//  SettingsView.swift
//  Fructus
//
//  Created by Alexander Snitko on 4.05.22.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Properties
    
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - Section 1
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most Fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    } label: {
                        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                        }
                    }
                    // MARK: - Section 2
                    
                    // MARK: - Section 3
                    
                } //: VStack
                .navigationBarTitleDisplayMode(.large)
                .navigationTitle("Settings")
                .toolbar(content: {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                    })
                })
                .padding()
            } //: Scroll
        } //: Navigation
    
}

// MARK: - Preview

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11")
    }
}
