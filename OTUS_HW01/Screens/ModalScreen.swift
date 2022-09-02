//
//  ModalScreen.swift
//  OTUS_HW01
//
//  Created by Александр Касьянов on 02.09.2022.
//

import SwiftUI

struct ModalScreen: View {
    
    @StateObject var viewModel: InstrumentsListViewModel = .init()
    
    var body: some View {
        VStack {
            Text("My favourites instruments")
                .padding()
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            ForEach(viewModel.instruments) { instrument in
                if instrument.isFavourite {
                    Text(instrument.name)
                        .padding()
                        .font(.system(size: 50))
                }
            }
        }
    }
}

struct ModalScreen_Previews: PreviewProvider {
    static var previews: some View {
        ModalScreen()
    }
}
