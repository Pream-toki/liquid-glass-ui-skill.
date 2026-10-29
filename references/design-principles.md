# Design principles

## 1. Hierarchy: glass is the control layer

Treat the interface as two related layers:

- **Content:** the information and tasks that make the app useful.
- **Controls:** navigation and actions that sit above or around content.

Glass should help users locate and operate controls without competing with the content. A screen full of equally translucent cards has no clear hierarchy.

Good candidates:
- Navigation bars and tab bars using native system components
- Toolbars and compact contextual actions
- A small number of floating controls over maps, photos, or canvases
- A custom control that genuinely needs a distinct floating layer

Usually poor candidates:
- Every dashboard card
- Long blocks of body text
- Forms where the field and label contrast becomes unreliable
- Decorative glass panels behind content that already has a clear structure

## 2. Harmony: relate shapes and spacing

- Align corner curvature across nested containers; avoid arbitrary combinations of pill, circle, and sharp rectangle shapes.
- Use the platform's standard metrics where possible instead of hard-coding sizes to match a screenshot.
- Give controls enough room to avoid collisions and accidental taps.
- Respect safe areas and let content extend behind system surfaces only when readability remains strong.

## 3. Consistency: let the system do its job

- Use standard navigation and control components before creating custom replacements.
- Avoid layering custom opaque backgrounds over system bars that should adapt to the platform.
- Use platform colors or semantic colors with light/dark variants.
- Keep icon style, control placement, and action hierarchy consistent across screens.

## 4. Material behavior

Liquid Glass is dynamic. Its appearance can respond to content underneath, focus, overlap, and interaction. A static translucent rectangle with a border is only a visual approximation.

When custom glass is warranted:
- Ensure the background behind it has enough visual information for the effect to be perceptible.
- Avoid placing glass directly over similarly styled glass.
- Keep text and icons crisp and readable; the material should not become the content.
- Do not fake specular highlights with heavy gradients unless the project explicitly calls for a stylized approximation.

## 5. Motion and interaction

Motion should communicate state and relationships:
- Use built-in platform transitions where appropriate.
- Keep transitions brief and purposeful.
- Make pressed, focused, selected, disabled, and loading states clear.
- Ensure interaction remains understandable without motion.
- Respect Reduce Motion and other accessibility settings.

Avoid:
- Constant shimmer or breathing effects
- Large bounces for routine actions
- Delayed controls that wait for an animation to finish
- Motion that obscures a label or changes the control's hit target unexpectedly

## 6. Accessibility

- Never rely on translucency alone to distinguish a control.
- Check contrast over the actual range of backgrounds the control can overlap.
- Test larger text sizes and long localized labels.
- Keep VoiceOver labels and action semantics intact.
- Support keyboard, pointer, and focus behavior on iPad/Mac where relevant.
- Verify behavior when transparency or motion is reduced.
- Do not disable system accessibility adaptations to preserve a visual effect.

## 7. Visual review questions

1. Can a new user immediately identify the primary task?
2. Is the glass layer visually distinct from the content layer?
3. Is every custom glass element functionally justified?
4. Does the screen remain readable with varied content beneath controls?
5. Are overlapping materials and redundant backgrounds avoided?
6. Does the design still work in light and dark appearances?
7. Are motion and state changes understandable?
8. Are platform conventions preserved?
