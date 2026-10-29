# Liquid Glass UI Skill

A practical, implementation-aware skill for designing and reviewing Liquid Glass interfaces for Apple platforms.

**Purpose:** Help coding agents produce interfaces that feel at home on iOS 26 and later without turning every surface into a blurry glass card.

## What this skill does

- Applies Apple's hierarchy, harmony, and consistency principles.
- Distinguishes the interactive glass layer from the app's content layer.
- Prefers native platform components when they already provide the correct behavior.
- Provides SwiftUI-first implementation patterns and UIKit notes.
- Reviews legibility, motion, accessibility, layout, and platform adaptation.
- Includes a separate web-prototype mode for projects that imitate the aesthetic but cannot use Apple's native materials.

## Install

Copy the `liquid-glass-ui` directory into the skills directory supported by your coding agent.

For agents using the common folder-based skill convention:

```text
your-project/
└── .agents/
    └── skills/
        └── liquid-glass-ui/
            ├── SKILL.md
            ├── references/
            └── examples/
```

If your agent uses a global skills directory, install the folder there instead. Follow the agent's own documentation for the exact location and discovery rules.

## Use

Ask your agent to apply the skill to a specific task, for example:

- “Build this screen using native Liquid Glass conventions.”
- “Audit this SwiftUI screen for incorrect glass usage and accessibility issues.”
- “Refactor my custom tab bar to use standard platform navigation where possible.”
- “Make a web prototype inspired by Liquid Glass, but do not claim it is native iOS Liquid Glass.”

The skill is guidance, not a replacement for compiling and testing in Xcode on supported OS versions.

## Contents

- `SKILL.md` — primary instructions and workflow
- `references/design-principles.md` — visual and interaction rules
- `references/swiftui-patterns.md` — native SwiftUI patterns
- `references/uikit-notes.md` — UIKit considerations
- `references/web-prototype.md` — guidance for non-native mockups
- `references/review-checklist.md` — final quality gate
- `examples/GlassControlsExample.swift` — small SwiftUI reference example

## Compatibility notes

Liquid Glass is a platform design/material system, not a universal CSS property. Native appearance and APIs depend on the Apple SDK and deployment target. Confirm API availability in the project's installed SDK and use availability checks when supporting older OS versions.

## Sources

This skill is independently written and based on public Apple developer guidance:

- [Liquid Glass overview](https://developer.apple.com/documentation/technologyoverviews/liquid-glass)
- [Adopting Liquid Glass](https://developer.apple.com/documentation/technologyoverviews/adopting-liquid-glass)
- [Build a SwiftUI app with the new design (WWDC25)](https://developer.apple.com/videos/play/wwdc2025/323/)
- [Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/)

This is a community skill and is not affiliated with, endorsed by, or sponsored by Apple.

## License

MIT. See `LICENSE`.
