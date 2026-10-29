# Liquid Glass review checklist

Use this before calling a design complete.

## Product and hierarchy
- [ ] Primary task is obvious without studying decorative effects.
- [ ] Content is visually primary; controls are a separate functional layer.
- [ ] Each custom glass element has a clear interaction or hierarchy purpose.
- [ ] Standard platform components were considered first.

## Material and layout
- [ ] No unnecessary glass treatment on every card or content block.
- [ ] No confusing stack of overlapping glass surfaces.
- [ ] Controls remain legible over all expected underlying content.
- [ ] Safe areas, scroll edges, and compact layouts are handled.
- [ ] Shapes and spacing are consistent with neighboring controls.

## Behavior
- [ ] Selected, pressed, disabled, focused, and loading states are clear.
- [ ] Motion explains an action or relationship.
- [ ] The interface works if animation is reduced or absent.
- [ ] Actions are not delayed by decorative transitions.

## Accessibility
- [ ] VoiceOver / screen-reader labels and traits are meaningful.
- [ ] Text scaling and long labels are checked.
- [ ] Contrast is sufficient across background variations.
- [ ] Increased contrast and reduced transparency settings are checked where supported.
- [ ] Touch targets and focus order are usable.

## Platform and verification
- [ ] Framework and deployment target are known.
- [ ] API availability is checked against the actual SDK.
- [ ] Older OS behavior has a sensible fallback if required.
- [ ] Light and dark appearances are inspected.
- [ ] The app was built and tested before any such claim is made.
- [ ] Web approximations are clearly identified as approximations.

## Output quality
- [ ] Design rationale is concise and tied to user needs.
- [ ] Code is scoped to the requested screen or component.
- [ ] Assumptions and unverified items are stated honestly.
