//
//  SleepView.swift
//  Relax Sounds
//
//  Created by Christinne on 14/01/2024.
//

import SwiftUI

struct SleepView: View {
    var body: some View {
		TabView {
			DiscoverView()
				.tabItem {
					Image(systemName: "moon.stars.fill")
					Text("Discover")
				}
				.navigationTitle("Discover")
				.navigationBarTitleDisplayMode(.large)

			ComposerView()
				.tabItem {
					Image(systemName: "music.note")
					Text("Composer")
				}
				.navigationTitle("Composer")
				.navigationBarTitleDisplayMode(.large)
		}
    }
}

#Preview {
    SleepView()
}
