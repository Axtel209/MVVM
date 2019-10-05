//
//  HomeViewModel.swift
//  MVVM
//
//  Created by Giorgio Doganiero on 10/5/19.
//  Copyright © 2019 GiorgioDoganiero. All rights reserved.
//

import Foundation

final class HomeViewModel {
    // MARK: - Properties
    let model: HelloWorld

    // MARK - Initilizer
    init() {
        model = HelloWorld(title: "Hello World!")
    }
}
