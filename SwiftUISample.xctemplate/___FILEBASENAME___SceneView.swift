//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___. All rights reserved.
//

import SwiftUI

struct ___VARIABLE_sceneName___SceneView: View {
    @ObservedObject var viewModel = ___VARIABLE_sceneName___ViewModel()
    var body: some View {
        NavigationView {
            List(viewModel.models, id: \.self) {
                ___VARIABLE_sceneName___View(model: $0)
            }.navigationBarTitle("")
                .onAppear {
                    self.viewModel.fetch___VARIABLE_sceneName___()
            }
        }
    }
}
struct ___VARIABLE_sceneName___SceneView_Previews: PreviewProvider {
    static var previews: some View {
        ___VARIABLE_sceneName___SceneView()
    }
}
