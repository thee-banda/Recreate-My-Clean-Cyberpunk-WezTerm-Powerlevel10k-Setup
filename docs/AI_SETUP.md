# AI-Assisted Setup

Use this when you want Codex, Claude Code, or another coding agent to install the theme safely.

1. Open the repo in your AI coding agent.
2. Paste the contents of [`PROMPT.md`](../PROMPT.md).
3. Ask the agent to inspect your local shell and terminal configuration before editing.
4. Confirm it backs up existing files before applying changes.
5. Reload your shell with:

```sh
exec zsh
```

The prompt is intentionally conservative. It asks the agent to preserve unrelated PATH entries, aliases, plugins, completions, and keybindings.
