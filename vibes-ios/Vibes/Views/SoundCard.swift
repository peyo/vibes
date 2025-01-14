import SwiftUI

struct SoundCard: View {
    let sound: SoundType
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(sound.rawValue)
                .foregroundColor(.appAccent) // Text color
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                    Rectangle()
                        .fill(isSelected ? Color.gray.opacity(0.1) : Color.clear) // Background color
                        .cornerRadius(0) // Rounded corners
                )
                .overlay(
                    Rectangle()
                        .strokeBorder(isSelected ? Color.appAccent : Color.clear, lineWidth: 2) // Border color
                        .cornerRadius(0) // Rounded corners
                )
        }
        .padding(.horizontal, 4)
    }
}