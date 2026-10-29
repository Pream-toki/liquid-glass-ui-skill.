# UIKit notes

## Start with standard UIKit components

Prefer standard `UINavigationController`, navigation bars, toolbars, tab controllers, sheets, menus, and controls when they satisfy the product need. Standard components are the safest way to inherit platform appearance and adaptation.

## Custom materials

- Use the Liquid Glass-specific APIs only when the project's SDK and deployment target support them.
- `UIBlurEffect` provides blur; do not present it as equivalent to Liquid Glass.
- Avoid applying opaque custom backgrounds to system bars without a concrete reason.
- Use semantic/system colors and account for light, dark, and increased-contrast appearances.
- Preserve control labels, accessibility traits, focus behavior, and adequate hit targets.

## Verification

Build with the latest SDK available to the project, then inspect:
- Navigation and toolbar appearance
- Scroll-edge behavior and content legibility
- Overlap between glass elements
- Sheets, menus, popovers, and keyboard presentation
- Light/dark appearance and accessibility settings
- Older OS fallback behavior

Check current Apple documentation for exact API names and availability. Do not invent UIKit symbols or claim support based only on a visual resemblance.
