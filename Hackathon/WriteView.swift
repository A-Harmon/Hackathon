//
//  WriteView.swift
//  Hackathon
//
//  Created by Christopher Leonard on 12/19/24.
//

import SwiftUI

struct WriteView: View {
    @State var text = "Nice, very amazing."
    var body: some View {
        VStack {
            HStack {
                Image("Odysseus")
                    .resizable()
                    .frame(maxWidth:75,maxHeight: 75)
                    .clipShape(Circle())
                Spacer()
            }
            TextEditor(text: $text)
                .textFieldStyle(.roundedBorder)
                //.foregroundStyle(.white)
                .multilineTextAlignment(.center)
                .overlay {
                    VStack {
                        Text(text)
                            .foregroundStyle(.blue)
                            .multilineTextAlignment(.center)
                        .padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))
                        Spacer()
                    }
                }
            Spacer()
        }
        //.padding()
    }
}

#Preview {
    WriteView()
}
