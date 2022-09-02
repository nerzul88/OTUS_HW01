//
//  InstrumentFilterView.swift
//  OTUS_HW01
//
//  Created by Александр Касьянов on 02.09.2022.
//

import SwiftUI

struct InstrumentFilterView: View {
    
    @EnvironmentObject var viewModel: InstrumentsListViewModel
    @Binding var favouriteShowed: Bool
    
    var body: some View {
        Toggle(isOn: $favouriteShowed) {
            Text("Only favourites")
        }
    }
}
