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
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
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
                GroupBox {
                    Divider().padding(.vertical, 4)
                    Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome dcreen again.")
                        .padding(.vertical, 8)
                        .frame(minWidth: nil, idealWidth: nil, maxWidth: nil, minHeight: 60, idealHeight: nil, maxHeight: nil, alignment: .leading)
                        .layoutPriority(1)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    Toggle(isOn: $isOnboarding) {
                        if isOnboarding {
                            Text("Restarted".uppercased())
                                .fontWeight(.bold)
                                .foregroundColor(Color.green)
                        } else {
                            Text("Restart".uppercased())
                                .fontWeight(.bold)
                                .foregroundColor(Color.secondary)
                        }
                    }
                    .padding()
                } label: {
                    SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                }
                    // MARK: - Section 3
                GroupBox {
                    SettingsRowView(name: "Developer", content: "Alexander Snitko")
                    SettingsRowView(name: "Designer", content: "Alexander Snitko")
                    SettingsRowView(name: "Compatibility", content: "iOS 14+")
                    SettingsRowView(name: "Github", linkLabel: "AsyncAmisu GIT", linkDestination: "github.com/AsyncAmisu")
                    SettingsRowView(name: "SwiftUI", content: "2.0")
                    SettingsRowView(name: "Version", content: "1.0")
                } label: {
                    SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                }

                    
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
            .preferredColorScheme(.light)
            .previewDevice("iPhone 11")
    }
}
