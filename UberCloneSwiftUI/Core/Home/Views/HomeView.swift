//
//  HomeView.swift
//  UberCloneSwiftUI
//
//  Created by Antony Huaman Alikhan on 22/12/25.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showLocationSearch: Bool = false
    
    
    var body: some View {
        ZStack(alignment: .top) {
            UberMapViewRepresentable()
                .ignoresSafeArea(edges: .all)
            
            if showLocationSearch {
                LocationSearchView()
            } else {
                LocationSearchActivationView()
                    .padding(.top, 72)
                    .onTapGesture {
                        withAnimation(.spring()){
                            showLocationSearch.toggle()
                        }
                        
                    }
            }
            
            MapViewActionButton(showLocationSearch: $showLocationSearch)
                .padding(.leading)
                .padding(.top, 4)
        }
        
    }
}

#Preview {
    HomeView()
}
