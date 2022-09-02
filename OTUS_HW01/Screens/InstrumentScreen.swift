//
//  InstrumentScreen.swift
//  OTUS_HW01
//
//  Created by Александр Касьянов on 02.09.2022.
//

import SwiftUI

struct InstrumentScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var title: String
    
    var body: some View {
        VStack {
            Spacer()
            Text(title)
                .font(.system(size: 250))
            Spacer()
            Spacer()
            Text("Go back")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .background(.blue)
                .clipShape(Capsule(style: .continuous))
                .onTapGesture {
                    presentationMode.wrappedValue.dismiss()
                }
            Spacer()
        }
        //.frame(height: 600)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        //.navigationTitle(title)
        

    }
}

struct InstrumentScreen_Previews: PreviewProvider {
    static var previews: some View {
        InstrumentScreen(title: "🎸")
    }
}
