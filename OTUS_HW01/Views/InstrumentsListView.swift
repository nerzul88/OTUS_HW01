//
//  InstrumentsListView.swift
//  OTUS_HW01
//
//  Created by Александр Касьянов on 02.09.2022.
//

import SwiftUI

struct InstrumentsListView: View {
    
    @StateObject var viewModel: InstrumentsListViewModel = .init()
    @State var favouriteShowed: Bool = false
    
    var body: some View {
        VStack {
            List {
                
                InstrumentFilterView(favouriteShowed: $favouriteShowed)
                    .environmentObject(viewModel)
                ForEach(viewModel.instruments) { instrument in
                    if !favouriteShowed || instrument.isFavourite {
                        NavigationLink(destination: InstrumentScreen(title: instrument.name)) {
                            Text(instrument.name)
                        }
                    }
                }
            }
        }
    }
}

struct InstrumentsListView_Previews: PreviewProvider {
    static var previews: some View {
        InstrumentsListView()
    }
}
