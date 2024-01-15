//
//  DiscoverView.swift
//  Relax Sounds
//
//  Created by Christinne on 14/01/2024.
//

import SwiftUI

struct DiscoverView: View {
	@State private var isDefault = true
	@State private var isAmbient = false
	@State private var isInstrumental = false
	@State private var isLofi = false
	@State private var isClassical = false
	
	//private let adaptiveColumns = [GridItem(.adaptive(minimum: 120, maximum: 180))]
	//private var flexibleLayout = [GridItem(.flexible()), GridItem(.flexible())]
	private var mixedLayout = [GridItem(.fixed(160)), GridItem(.adaptive(minimum: 180))]
	
	var body: some View {
		NavigationStack {
			ScrollView {
				ScrollView (.horizontal, showsIndicators: false) {
					HStack (spacing: -20) {
						FilterToggle(label: "All", systemImage: "circle.grid.3x3.fill", isSelected: $isDefault) {
							isDefault = true
						}
						.disabled(isAmbient || isInstrumental || isLofi || isClassical)
						
						FilterToggle(label: "Ambient", systemImage: "figure.mind.and.body", isSelected: $isAmbient) {
							isDefault = false
						}
						
						FilterToggle(label: "Instrumental", systemImage: "guitars.fill", isSelected: $isInstrumental) {
							isDefault = false
						}
						
						FilterToggle(label: "Lofi", systemImage: "teddybear.fill", isSelected: $isLofi) {
							isDefault = false
						}
						
						FilterToggle(label: "Classical", systemImage: "pianokeys", isSelected: $isClassical) {
							isDefault = false
						}
						
						Spacer()
					}
					.font(.footnote)
				}
				
				let filteredCategories = getFilteredCategories()
				let filteredPlaylists = filterPlaylists(by: filteredCategories)
				
				LazyVGrid(columns: mixedLayout, spacing: 20) {
					ForEach(filteredPlaylists) { playlist in
						NavigationLink(destination: PackDetailView()) {
							PlaylistCardView(playlist: playlist)
						}
						.foregroundStyle(.primary)
					}
				}
				.padding(.leading)
			}
			.navigationTitle("Discover")
			.navigationBarTitleDisplayMode(.large)
			.background(Color.primaryApp)
		}
	}
	
	private func getFilteredCategories() -> [String] {
		[isAmbient, isInstrumental, isLofi, isClassical]
			.enumerated()
			.filter { $0.element }
			.map { ["Ambient", "Instrumental", "Lofi", "Classical"][$0.offset] }
	}
}

#Preview {
    SleepView()
}
