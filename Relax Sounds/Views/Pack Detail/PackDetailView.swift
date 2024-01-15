//
//  PackDetailView.swift
//  Relax Sounds
//
//  Created by Christinne on 15/01/2024.
//

import SwiftUI

struct PackDetailView: View {
	@State private var isShowingSheet = true
	
	var body: some View {
		/*
		VStack {
			Image(systemName: "person.circle")
				.font(.largeTitle)
			Text("Glass")
		}
		.foregroundColor(.white)
		.background(
			GlassBackGround(width: 100, height: 100, color: .white)
				.shadow(color: .black, radius: 2, x: 2, y: 2)
		)
		*/
		
		ZStack {
			Image("DetailCampfire")
				.resizable()
				.ignoresSafeArea(.all)
				.scaledToFill()
			
			//Color.indigo.ignoresSafeArea(.all)
			
			.sheet(isPresented: $isShowingSheet) {
				VStack {
					Color.primaryApp.ignoresSafeArea(.all)
				}
				.presentationDetents([.height(250), .height(720)])
				.presentationDragIndicator(.visible)
			}
		}
	
    }
}

#Preview {
    PackDetailView()
}
