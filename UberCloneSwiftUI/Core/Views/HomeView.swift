//
//  HomeView.swift
//  UberCloneSwiftUI
//
//  Created by Antony Huaman Alikhan on 22/12/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        UberMapViewRepresentable()
            .ignoresSafeArea(edges: .all)
    }
}

#Preview {
    HomeView()
}
