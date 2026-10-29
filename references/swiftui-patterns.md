# SwiftUI patterns

These are starting points, not a promise that every symbol is available in every SDK. Check the deployment target and the project's installed SDK before use.

## Prefer standard navigation

Start with native structure:

```swift
NavigationStack {
    List(items) { item in
        NavigationLink(value: item) {
            ItemRow(item: item)
        }
    }
    .navigationTitle("Library")
    .toolbar {
        ToolbarItem(placement: .topBarTrailing) {
            Button(action: addItem) {
                Image(systemName: "plus")
            }
        }
    }
}
```

Use the standard tab/navigation components for the platform to provide the appropriate system appearance and behavior. Do not recreate a tab bar from scratch just to add blur.

## Use a glass button style when the control should be glass

On SDKs that support the style, prefer the system button style for a glass button rather than applying a glass surface to an arbitrary button hierarchy:

```swift
Button("Add item", systemImage: "plus", action: addItem)
    .buttonStyle(.glass)
```

For a primary action, check whether the SDK offers a prominent glass button style and whether the visual emphasis is appropriate. Keep the label and action obvious.

## Custom glass for a justified custom element

Use a custom glass effect only when the element needs to be a custom surface, not merely because a view exists:

```swift
if #available(iOS 26.0, *) {
    Label("Map options", systemImage: "slider.horizontal.3")
        .padding(12)
        .glassEffect()
} else {
    Label("Map options", systemImage: "slider.horizontal.3")
        .padding(12)
        .background(.regularMaterial, in: Capsule())
}
```

This illustrates an availability-aware fallback pattern. Confirm exact API availability and syntax against the project's SDK. The fallback is a material approximation, not native Liquid Glass.

## Keep custom glass elements coordinated

If several custom glass elements are visually related, investigate the platform's glass container and transition APIs available in the target SDK. Do not add these APIs automatically: use them only when elements should coordinate or morph as part of a coherent interaction.

## Do not over-customize system bars

Before adding a background to a toolbar, tab bar, or navigation element:
1. Remove unnecessary custom background modifiers.
2. Build with the current SDK.
3. Inspect the system-provided appearance.
4. Add customization only to address a specific, verified issue.

## Implementation checklist

- [ ] Uses native navigation and controls when appropriate
- [ ] No unsupported API assumed without an availability strategy
- [ ] Glass is used for the interactive layer, not all content
- [ ] Buttons use the correct style for their role
- [ ] No overlapping glass surfaces without a clear reason
- [ ] Light/dark and accessibility settings are tested
- [ ] Code compiles with the project's actual SDK
