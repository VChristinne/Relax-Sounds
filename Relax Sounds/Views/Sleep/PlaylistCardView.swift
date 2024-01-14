//
//  PlaylistCardView.swift
//  Relax Sounds
//
//  Created by Christinne on 14/01/2024.
//

import SwiftUI

struct PlaylistCardView: View {
	var playlist: PlaylistModel
	
	var body: some View {
		VStack(alignment: .leading, spacing: 8) {
			Image(playlist.images)
				.resizable()
				.scaledToFill()
				.frame(width: 164, height: 164)
				.cornerRadius(12)
				.foregroundStyle(.primary)
			
			Text(playlist.title)
				.font(.title3)
				.bold()
			
			Text("\(playlist.numberSongs) songs · \(playlist.category)")
				.font(.footnote)
				.foregroundStyle(.secondary)
		}
		.fontWeight(.light)
		.padding(5)
		.cornerRadius(12)
	}
}

#Preview {
	DiscoverView()
}
