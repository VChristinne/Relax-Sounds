import SwiftUI

struct FilterToggle: View {
	let label: String
	let systemImage: String
	let isSelected: Binding<Bool>
	let action: () -> Void
	
	var body: some View {
		let newValue = false

		Toggle(isOn: isSelected) {
			Label(label, systemImage: systemImage)
				.buttonStyle(.borderedProminent)
				.tint(isSelected.wrappedValue ? .accentColor : .gray)
		}
		.onChange(of: isSelected.wrappedValue) {
			if !newValue {
				action()
			}
		}
		.toggleStyle(.button)
		.fontWeight(.bold)
		.buttonBorderShape(.capsule)
		.buttonStyle(.bordered)
		.padding()
	}
}
