//
//  MapViewActionButton.swift
//  UberCloneSwiftUI
//
//  Created by Antony Huaman Alikhan on 2/01/26.
//

import SwiftUI

struct MapViewActionButton: View {
    
    @Binding var showLocationSearch: Bool
    
    var body: some View {
        Button(action: {
            withAnimation(.spring()){
                showLocationSearch.toggle()
            } // This bond the property and return the view to normal
        }, label: {
            Image(systemName: "line.3.horizontal")
                .font(.title2)
                .foregroundColor(.black)
                .padding()
                .background(.white)
                .clipShape(Circle())
                .shadow(color: .black, radius: 6)
        })
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    MapViewActionButton(showLocationSearch: .constant(true))
}
