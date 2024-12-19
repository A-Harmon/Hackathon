//
//  WriteView.swift
//  Hackathon
//
//

import SwiftUI

struct WriteView: View {
    @State var text = ""
    
    @Environment(\.dismiss) var dismiss
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
                .multilineTextAlignment(.leading)
            Spacer()
            Button("Post", action: {
                text = ""
                dismiss()
            })
            .font(.largeTitle)
            .bold()
            .foregroundStyle(.white)
            .frame(maxWidth:.infinity,maxHeight: 100)
            .background{
                RoundedRectangle(cornerRadius: 25)
            }
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
        }
        //.padding()
    }
}

#Preview {
    WriteView()
}
