# Milestone: v1.0 - Feature Complete

A collection of nice-to-have features to make megabuff a complete, polished CLI for AI prompt optimization.

---

## Provider Expansion

### Google Gemini Support
- [ ] Implement Gemini API integration
- [ ] Add models: `gemini-pro`, `gemini-1.5-pro`, `gemini-1.5-flash`
- [ ] Update config to support Gemini API keys

### Azure OpenAI Support
- [ ] Implement Azure OpenAI API integration
- [ ] Support custom deployment names and endpoints
- [ ] Handle Azure-specific authentication

### Ollama / Local Models Support
- [ ] Add support for local Ollama models
- [ ] Configure custom endpoints for self-hosted LLMs
- [ ] Zero-cost local prompt optimization

---

## Prompt Management

### Prompt History
- [ ] Store optimization history locally (`~/.megabuff/history.json`)
- [ ] Command: `megabuff history` - List past optimizations
- [ ] Command: `megabuff history --show <id>` - Show specific optimization
- [ ] Command: `megabuff history --clear` - Clear history
- [ ] Option: `--no-history` to skip saving

### Prompt Templates
- [ ] Command: `megabuff templates` - Manage reusable templates
- [ ] Command: `megabuff templates --save <name>` - Save current prompt as template
- [ ] Command: `megabuff templates --use <name>` - Use a saved template
- [ ] Command: `megabuff templates --list` - List all templates
- [ ] Support template variables: `{{variable}}`

### Batch Processing
- [ ] Command: `megabuff batch <directory>` - Optimize multiple files
- [ ] Option: `--glob "*.txt"` - Filter files by pattern
- [ ] Option: `--output-dir <path>` - Output directory for results
- [ ] Parallel processing with progress bar

---

## Output & Formatting

### Multiple Output Formats
- [ ] Option: `--format json` - JSON output with metadata
- [ ] Option: `--format markdown` - Formatted markdown output
- [ ] Option: `--format diff` - Show diff between original and optimized
- [ ] Option: `--format plain` - Plain text (current default)

### Rich Terminal Output
- [ ] Syntax highlighting for prompts
- [ ] Side-by-side comparison view
- [ ] Color-coded diff output
- [ ] Token count display (before/after)

### Export Options
- [ ] Export to clipboard in different formats
- [ ] Option: `--share` - Generate shareable link (optional cloud feature)

---

## Optimization Features

### Custom Optimization Goals
- [ ] Option: `--goal clarity` - Optimize for clarity
- [ ] Option: `--goal concise` - Make prompt more concise
- [ ] Option: `--goal detailed` - Add more detail/context
- [ ] Option: `--goal technical` - Technical writing style
- [ ] Option: `--goal creative` - Creative writing style

### System Prompt Customization
- [ ] Option: `--system <prompt>` - Custom system prompt for optimizer
- [ ] Config: Save default system prompt preferences
- [ ] Presets for different optimization styles

### Optimization Analysis
- [ ] Show what was changed and why
- [ ] Provide optimization score/rating
- [ ] Suggest follow-up improvements
- [ ] Token count comparison

---

## Developer Experience

### Testing Framework
- [ ] Add Jest or Vitest for unit tests
- [ ] Test coverage for core functions
- [ ] Integration tests for API calls (mocked)
- [ ] CI/CD pipeline with GitHub Actions

### Plugin System
- [ ] Support for custom optimization plugins
- [ ] Plugin API for extending functionality
- [ ] Community plugin repository

### Shell Completions
- [ ] Bash completion script
- [ ] Zsh completion script
- [ ] Fish completion script
- [ ] PowerShell completion script

---

## Integrations

### VS Code Extension
- [ ] Command palette integration
- [ ] Right-click context menu to optimize selection
- [ ] Inline optimization suggestions
- [ ] Status bar integration

### Editor Plugins
- [ ] Vim/Neovim plugin
- [ ] JetBrains IDE plugin
- [ ] Sublime Text package

### CI/CD Integration
- [ ] GitHub Action for prompt optimization
- [ ] Pre-commit hook support
- [ ] Documentation for CI/CD usage

---

## Configuration Enhancements

### Profiles
- [ ] Support multiple configuration profiles
- [ ] Command: `megabuff config --profile <name>`
- [ ] Quick profile switching
- [ ] Project-level `.megabuffrc` support

### Cost Tracking
- [ ] Track API usage and estimated costs
- [ ] Command: `megabuff usage` - Show usage statistics
- [ ] Set budget limits/warnings
- [ ] Cost breakdown by provider/model

### Configuration Sync
- [ ] Optional cloud config sync
- [ ] Export/import configuration
- [ ] Share settings across machines

---

## Quality of Life

### Interactive Mode Improvements
- [ ] Readline support with history
- [ ] Multi-line editing with proper cursor handling
- [ ] Tab completion for commands
- [ ] Prompt preview before optimization

### Undo/Redo
- [ ] Option: `--undo` - Revert last optimization
- [ ] Keep backup of original before overwrite

### Offline Mode
- [ ] Cache responses for offline viewing
- [ ] Graceful degradation when offline

### Verbose/Debug Mode
- [ ] Option: `-v, --verbose` - Detailed output
- [ ] Option: `--debug` - Debug information
- [ ] Show API request/response in debug mode

---

## Documentation

### Man Page
- [ ] Generate man page from CLI help
- [ ] Install man page with npm

### Examples Repository
- [ ] Curated examples of prompt optimizations
- [ ] Before/after showcase
- [ ] Best practices guide

### Internationalization
- [ ] Support for multiple languages
- [ ] Localized error messages
- [ ] Language-specific optimization

---

## Priority Features (Top 10)

1. **Google Gemini Support** - Expand provider options
2. **Prompt History** - Track and review past optimizations
3. **Custom Optimization Goals** - Tailored optimization styles
4. **JSON Output Format** - Better scripting support
5. **Ollama Support** - Free local optimization
6. **Shell Completions** - Better CLI experience
7. **Testing Framework** - Code reliability
8. **Token Count Display** - Cost awareness
9. **Diff Output** - See what changed
10. **VS Code Extension** - IDE integration

---

## Contributing

To work on any of these features:

1. Fork the repository
2. Create a feature branch
3. Implement the feature
4. Submit a pull request

See [README.md](README.md) for development setup instructions.
