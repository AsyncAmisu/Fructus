//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Alexander Snitko on 4.05.22.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - Properties
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(Color.gray).fontWeight(.bold)
                Spacer()
                if content != nil {
                    Text(content!).fontWeight(.bold)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
            }
        }
    }
}

// MARK: - Preview

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Alexander Snitko")
                .previewLayout(.fixed(width: 375, height: 60))
            .padding()
            SettingsRowView(name: "Github", linkLabel: "AsyncAmisu GIT", linkDestination: "github.com/AsyncAmisu")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
