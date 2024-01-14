//
//  DiscoverView.swift
//  Relax Sounds
//
//  Created by Christinne on 14/01/2024.
//

import SwiftUI

struct DiscoverView: View {
	private let adaptiveColumns = [
		GridItem(.adaptive(minimum: 120))
	]
	
	var body: some View {
		NavigationStack {
			ScrollView {
				LazyVGrid(columns: adaptiveColumns, spacing: 15) {
					ForEach(playlists) { playlist in
						NavigationLink(destination: ContentView()) {
							PlaylistCardView(playlist: playlist)
						}
						.foregroundStyle(.primary)
					}
				}
				.padding()
			}
			.background(Color.primaryApp)
		}
	}
}

#Preview {
    SleepView()
}
