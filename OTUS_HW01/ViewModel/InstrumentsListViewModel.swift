//
//  InstrumentsListViewModel.swift
//  OTUS_HW01
//
//  Created by Александр Касьянов on 02.09.2022.
//

import Foundation

final class InstrumentsListViewModel: ObservableObject {
    
    @Published private(set) var toggleFavouriteTitle = "Switch Favourites"
    
    @Published private(set) var instruments = [
        MusicalInstruments(name: "🎸", isFavourite: true),
        MusicalInstruments(name: "🪕", isFavourite: true),
        MusicalInstruments(name: "🎻", isFavourite: false),
        MusicalInstruments(name: "🎷", isFavourite: true),
        MusicalInstruments(name: "🎺", isFavourite: false),
        MusicalInstruments(name: "🪗", isFavourite: false),
        MusicalInstruments(name: "🎹", isFavourite: true),
        MusicalInstruments(name: "🥁", isFavourite: true)
    ]
    
    
}
