//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Mehmet Ali ÇAKIR on 7.09.2021.
//

import SwiftUI

struct SettingsRowView: View {
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "Mehmet Ali ÇAKIR")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        SettingsRowView(name: "Website", linkLabel: "Github Profile", linkDestination: "github.com/mehmetalickr")
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
