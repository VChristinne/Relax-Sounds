//
//  PlaylistModel.swift
//  Relax Sounds
//
//  Created by Christinne on 14/01/2024.
//

import SwiftUI

struct PlaylistModel: Identifiable {
	var id = UUID().uuidString
	var images: String
	var title: String
	var numberSongs: Int
	var category: String
}

var playlists: [PlaylistModel] = [
	PlaylistModel(images: "Campfire", title: "Guitar Camp", numberSongs: 7, category: "Instrumental"),
	
	PlaylistModel(images: "Universe", title: "Sparkle", numberSongs: 5, category: "Lofi sci-fi"),
	
	PlaylistModel(images: "Florest", title: "Darkside", numberSongs: 2, category: "Mood"),
	
	PlaylistModel(images: "Lake", title: "Sunset", numberSongs: 4, category: "Mood"),
	
	PlaylistModel(images: "Whale", title: "Lullaby", numberSongs: 6, category: "Instrumental"),
	
	PlaylistModel(images: "Bedroom", title: "Chill-hop", numberSongs: 3, category: "Classical")
]
