//
//  DialogueListPlaceholderView.swift
//  GPTChat
//
//  Created by Bhumika Patel on 03/04/23.
//

import SwiftUI

struct DialogueListPlaceholderView: View {
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "message.fill")
                .font(.system(size: 50))
                .padding()
                .foregroundColor(.secondary)
            Text("No Message")
                .font(.title3)
                .bold()
            Spacer()
        }
    }
}

struct DialogueListPlaceholderView_Previews: PreviewProvider {
    static var previews: some View {
        DialogueListPlaceholderView()
    }
}
