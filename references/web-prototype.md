# Web prototype mode

Use this guide only when the requested deliverable is a website or web prototype inspired by Liquid Glass.

## Be precise about what it is

A browser implementation can imitate selected visual traits such as translucent surfaces, backdrop blur, thin borders, soft highlights, and restrained motion. It cannot automatically reproduce Apple's native material, system integration, refraction behavior, or native morphing transitions.

Call it **“Liquid Glass-inspired”** or **“a web approximation,”** not native Liquid Glass.

## Implementation guidance

- Keep the content surface mostly solid and readable.
- Reserve translucent treatments for a small number of controls or navigation elements.
- Use `backdrop-filter` as progressive enhancement, not a required dependency.
- Supply a readable opaque fallback for unsupported browsers.
- Avoid putting body copy on a busy translucent surface.
- Use semantic HTML controls and visible focus states.
- Respect `prefers-reduced-motion`.
- Test contrast over every background that can appear behind a control.
- Avoid constant animations, gratuitous shine, and nested glass cards.

## Example CSS

```css
.glass-control {
  color: var(--control-foreground, #111827);
  background: rgba(248, 250, 252, 0.88); /* readable fallback */
  border: 1px solid rgba(255, 255, 255, 0.72);
  border-radius: 999px;
  box-shadow: 0 8px 24px rgba(15, 23, 42, 0.12);
}

@supports (backdrop-filter: blur(1px)) {
  .glass-control {
    background: rgba(248, 250, 252, 0.58);
    backdrop-filter: blur(20px) saturate(1.25);
    -webkit-backdrop-filter: blur(20px) saturate(1.25);
  }
}

@media (prefers-reduced-motion: reduce) {
  .glass-control,
  .glass-control * {
    animation: none !important;
    transition: none !important;
    scroll-behavior: auto !important;
  }
}
```

Treat these values as an example, not universal design tokens. Validate contrast against real content and support dark mode with deliberate variants.

## Web review

- [ ] The page remains usable when backdrop filtering is unsupported
- [ ] Text is readable over changing backgrounds
- [ ] Focus is visible without relying on blur or color alone
- [ ] Motion respects reduced-motion preferences
- [ ] Native iOS implementation is not claimed
