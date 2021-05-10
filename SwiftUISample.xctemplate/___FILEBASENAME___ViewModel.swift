//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___. All rights reserved.
//

import Combine
import SwiftUI

class ___VARIABLE_sceneName___ViewModel: ObservableObject {
    private let url = "" //Fixme: Update using your URL
    private var task: AnyCancellable?
    
    @Published var models: [___VARIABLE_sceneName___] = []
    
    func fetch___VARIABLE_sceneName___() {
        task = URLSession.shared.dataTaskPublisher(for: URL(string: url)!)
            .map { $0.data }
            .decode(type: [___VARIABLE_sceneName___].self, decoder: JSONDecoder())
            .replaceError(with: [])
            .eraseToAnyPublisher()
            .receive(on: RunLoop.main)
            .assign(to: \___VARIABLE_sceneName___ViewModel.models, on: self)
    }
}
