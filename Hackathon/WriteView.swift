//
//  WriteView.swift
//  Hackathon
//
//

import SwiftUI

struct WriteView: View {
    @State var text = ""
    
    @State var alert = false
    
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
                if text != "" {
                    odysseus.NewTweet(text)
                    text = ""
                    alert = true
                }
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
        .alert("Your post was posted succesfully!", isPresented: $alert, actions: {})
    }
}

#Preview {
    WriteView()
}
