//
//  MusicalInstruments.swift
//  OTUS_HW01
//
//  Created by Александр Касьянов on 02.09.2022.
//

import Foundation

struct MusicalInstruments: Identifiable {
    let name: String
    let isFavourite: Bool
    let id = UUID()
}
