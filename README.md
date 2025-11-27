# Claude Code Plugin Marketplace

A collection of Claude Code plugins for enhanced AI-assisted development.

## Add This Marketplace

```
/plugin marketplace add sebastiandelaroche/claude-code-plugins
```

## Available Plugins

| Plugin | Install Command | Description |
|--------|-----------------|-------------|
| prp-agentic | `/plugin install prp-agentic` | PRP workflow for AI-assisted development |

## After Installing a Plugin

Each plugin may have initialization steps. See the plugin's README for details.

For example, after installing `prp-agentic`:
```
/prp-init
```

## Contributing

To add a new plugin:

1. Create a folder under `plugins/your-plugin-name/`
2. Add `.claude-plugin/plugin.json` with metadata
3. Add `commands/`, `hooks/`, etc. as needed
4. Add your plugin to `.claude-plugin/marketplace.json`

## License

MIT
