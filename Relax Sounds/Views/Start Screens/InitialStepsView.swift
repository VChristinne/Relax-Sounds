//
//  StepOneScreen.swift
//  Relax Sounds
//
//  Created by Christinne on 14/01/2024.
//

import SwiftUI

struct InitialStepsView: View {
	@State var isActive: Bool = false
	
    var body: some View {
		NavigationStack {
			ZStack {
				Color.primaryApp.ignoresSafeArea(.all)
				
				TabView {
					// MARK: Exclusive Sounds
					VStack {
						VStack {
							Image("StepOneIcon")
								.resizable()
								.aspectRatio(contentMode: .fill)
								.frame(width: 200, height: 200)
								.padding(.bottom, 60)
							
							VStack (alignment: .center, spacing: 30) {
								Text("Exclusive Sounds")
									.font(.largeTitle)
									.fontWeight(.bold)
								
								Text("We have an author's library of sounds that you will not find anywhere else")
									.padding(.trailing, 30)
									.padding(.leading, 30)
									.multilineTextAlignment(.center)
									.foregroundStyle(.secondary)
							}
							.fontDesign(.rounded)
						}
					}
					
					// MARK: Relax sleep sounds
					VStack {
						VStack {
							Image("StepTwoIcon")
								.resizable()
								.aspectRatio(contentMode: .fill)
								.frame(width: 200, height: 200)
								.padding(.bottom, 60)
							
							VStack (alignment: .center, spacing: 30) {
								Text("Relax sleep sounds")
									.font(.largeTitle)
									.fontWeight(.bold)
								
								Text("Our sounds will help to relax and improve your sleep health")
									.padding(.trailing, 30)
									.padding(.leading, 30)
									.multilineTextAlignment(.center)
									.foregroundStyle(.secondary)
							}
							.fontDesign(.rounded)
						}
					}
					
					// MARK: Story for kids
					VStack {
						VStack {
							Image("StepThreeIcon")
								.resizable()
								.aspectRatio(contentMode: .fill)
								.frame(width: 200, height: 200)
								.padding(.bottom, 60)
							
							VStack (alignment: .center, spacing: 30) {
								Text("Story for kids")
									.font(.largeTitle)
									.fontWeight(.bold)
								
								Text("Famous fairy tales with soothing sounds will help your children fall asleep faster")
									.padding(.trailing, 30)
									.padding(.leading, 30)
									.multilineTextAlignment(.center)
									.foregroundStyle(.secondary)
							}
							.fontDesign(.rounded)
							.overlay {
								Button(action: {
									print("Button Clicked")
								}) {
									NavigationLink(destination: SleepView().navigationBarBackButtonHidden(true)) {
										Text("Start")
											.font(.title3)
											.fontWeight(.bold)
									}
									.frame(width: 150, height: 40)
									
								}
								.buttonStyle(.bordered)
								.buttonBorderShape(.capsule)
								.padding(.top, 240)
							}
						
						}
					}
				}
				.tabViewStyle(.page(indexDisplayMode: .always))
			}
		}
    }
}

#Preview {
	InitialStepsView()
}
