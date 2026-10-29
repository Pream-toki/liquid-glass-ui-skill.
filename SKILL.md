---
name: liquid-glass-ui
description: Design, implement, or audit Liquid Glass-inspired interfaces with Apple-platform-aware hierarchy, native SwiftUI/UIKit patterns, motion, legibility, and accessibility. Use when building iOS 26+ interfaces, refactoring navigation or controls, reviewing glass effects, or creating clearly labeled web prototypes inspired by Liquid Glass.
---

# Liquid Glass UI

Design for the content first, then add glass only where it improves the interactive layer. Do not treat Liquid Glass as a generic blur effect or a requirement to make every card translucent.

## Operating rules

1. **Identify the target.** Determine whether the deliverable is native SwiftUI, UIKit, or a web prototype. Never describe CSS blur as Apple's native Liquid Glass.
2. **Check the deployment target and SDK.** Verify APIs against the project's actual Xcode SDK. Use the project's availability strategy for older OS versions; do not invent API names.
3. **Start with native components.** Prefer standard navigation, toolbars, tab views, sheets, menus, and controls when they meet the design need. They can inherit system appearance and behavior automatically.
4. **Separate layers.**
   - Content layer: text, media, lists, charts, forms, and app-specific information.
   - Interactive layer: navigation, toolbars, search, and important floating actions.
   Keep the content legible and visually primary.
5. **Use glass selectively.** Apply custom glass to a small number of meaningful controls. Avoid glass panels behind ordinary content, piles of overlapping glass, and redundant custom backgrounds on system bars.
6. **Design for context.** Check what sits behind the glass, how scrolling changes the background, whether controls overlap content, and whether the material still reads correctly in light and dark appearances.
7. **Respect accessibility.** Test contrast, Dynamic Type, VoiceOver, Reduce Motion, and Reduce Transparency / increased-contrast settings where supported. Do not rely on blur, tint, or color alone to communicate meaning.
8. **Use motion to explain relationships.** Prefer system transitions and restrained, purposeful movement. Avoid decorative motion that delays actions or makes state unclear.
9. **Preserve platform conventions.** Use familiar navigation structures, predictable action placement, platform sizing, safe areas, and appropriate touch targets.
10. **Verify the result.** Provide code that fits the actual project, explain any assumptions, and list what still needs to be compiled or tested.

## Workflow

### A. Inspect
Before designing, identify:
- Target platform and framework
- Minimum OS version and current SDK, if known
- Screen purpose and primary user task
- Existing navigation and component structure
- Accessibility requirements and supported appearances
- Whether the request is for a production implementation or a visual prototype

Ask only for missing information that materially affects the implementation. If details are unavailable, state reasonable assumptions and proceed.

### B. Establish hierarchy
Write one sentence describing the primary user task. Then define:
- Primary content
- Navigation and global actions
- Contextual actions
- Secondary information

Keep the most important content clear before adding visual effects.

### C. Choose components
Use this order:
1. Native standard component
2. Native composition of standard components
3. Custom glass element only when it solves a real interaction or hierarchy problem
4. Non-native visual imitation only when the target is explicitly a web prototype or a platform that lacks the native API

Explain why a custom element is necessary when bypassing a standard component.

### D. Implement
For SwiftUI:
- Use `TabView`, `NavigationStack`, `NavigationSplitView`, `toolbar`, sheets, menus, and standard controls where suitable.
- Use platform-provided glass button styles for glass buttons when supported.
- Use `glassEffect` for custom views only when a custom glass surface is justified and the API is available in the target SDK.
- Use `GlassEffectContainer` and glass identity/transition APIs only when needed for related glass elements and supported by the SDK.
- Do not put a raw glass effect on a button without checking whether the button's intended style should instead use a glass button style.
- Avoid hard-coded backgrounds that fight system materials.

For UIKit:
- Prefer standard UIKit bars, toolbars, controls, and presentation patterns.
- Use custom glass APIs only when supported by the deployment target and SDK.
- Treat `UIBlurEffect` as blur, not as a synonym for Liquid Glass.

For web:
- Clearly label the result as a visual approximation.
- Use CSS backdrop filtering only as progressive enhancement.
- Provide a solid/opaque fallback, preserve text contrast, and honor reduced-motion preferences.
- Do not claim to reproduce Apple's refraction, system integration, or native interaction behavior.

### E. Review
Run through `references/review-checklist.md`. Fix issues before presenting the result.

### F. Deliver
Return:
- A brief design rationale
- The relevant code or changes
- Any availability assumptions
- Accessibility and device testing notes
- A short list of remaining manual verification steps

Do not claim that code was compiled, tested on-device, or verified unless that actually happened.

## Reference guides

Read the guide relevant to the task:
- Visual principles: `references/design-principles.md`
- SwiftUI: `references/swiftui-patterns.md`
- UIKit: `references/uikit-notes.md`
- Web prototype: `references/web-prototype.md`
- Final review: `references/review-checklist.md`
