//
//  DashboardScreen.swift
//  OTUS_HW01
//
//  Created by Александр Касьянов on 02.09.2022.
//

import SwiftUI

struct DashboardScreen: View {
    
    @State var showModal: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Dashboard Screen")
                    .font(.largeTitle)
                    .foregroundColor(.primary)
                InstrumentsListView()
                Button {
                    showModal.toggle()
                } label: {
                    Text("Show favourites modal")
                        .font(.title)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }.sheet(isPresented: $showModal) {
                    ModalScreen()
                }
                Spacer()
                Spacer()
            }
        }
//        .navigationBarHidden(true)
//        .navigationBarBackButtonHidden(true)
    }
}

struct DashboardScreen_Previews: PreviewProvider {
    static var previews: some View {
        DashboardScreen()
    }
}
