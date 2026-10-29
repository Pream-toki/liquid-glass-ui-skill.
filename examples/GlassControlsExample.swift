import SwiftUI

/// Minimal reference for a native control layer.
/// Verify the API availability and syntax against the project's installed SDK.
struct GlassControlsExample: View {
    @State private var showingOptions = false

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Your content")
                        .font(.largeTitle.weight(.semibold))

                    Text("Keep the information layer clear and readable. Use glass for controls that sit above it, not as decoration behind every paragraph.")
                        .font(.body)

                    RoundedRectangle(cornerRadius: 24, style: .continuous)
                        .fill(Color.blue.gradient)
                        .frame(height: 180)
                        .overlay(alignment: .bottomLeading) {
                            Text("Content preview")
                                .font(.headline)
                                .foregroundStyle(.white)
                                .padding()
                        }
                }
                .padding()
            }
            .navigationTitle("Liquid Glass")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showingOptions = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .accessibilityLabel("Show options")
                }
            }
            .sheet(isPresented: $showingOptions) {
                NavigationStack {
                    Form {
                        Section("Options") {
                            Text("Prefer native controls and system-provided presentation.")
                        }
                    }
                    .navigationTitle("Options")
                    .navigationBarTitleDisplayMode(.inline)
                }
            }
        }
    }
}

#Preview {
    GlassControlsExample()
}
