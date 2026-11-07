# ZenNotes settings and templates

A public copy of my ZenNotes configuration, key bindings, and custom templates. This is **not** my vault: it contains no daily notes, other notes, workspace state, metadata, or assets.

## Contents

- [`config.toml`](config.toml) — portable app preferences and keymap overrides, including Vim settings, appearance, editor, and search settings.
- [`templates/`](templates/) — my custom Markdown templates:
  - Brainstorm to Spec
  - Guided Steps
  - Requirement to Plan

## Install

### Settings and key bindings

Back up your existing configuration, then copy `config.toml` to ZenNotes' configuration directory. On Linux, the default path is:

```text
~/.config/zennotes/config.toml
```

ZenNotes manages this portable config and applies edits live. The available options and keymap syntax are documented in the file itself. `Mod` means Cmd on macOS and Ctrl on Windows/Linux. With Vim enabled, `Leader` is Space by default.

### Templates

Copy the Markdown files in `templates/` into the templates folder configured for your vault. In my vault, that folder is `inbox/Templates`; choose or configure the appropriate folder in ZenNotes for your own vault.

## Personalize before using

These are my current preferences, not universal defaults. Review `config.toml` before replacing your existing file, and adjust paths, key bindings, and preferences to suit your system. In particular, the `note.daily.today` command currently uses `Shift+Mod+Unidentified`, which may not be usable on every keyboard or platform.
