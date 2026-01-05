#!/bin/bash
# Run this script locally with gh CLI authenticated
# Usage: ./scripts/create-milestone-issues.sh

set -e

REPO="supermegabuff/megabuff-cli"

echo "Creating milestone..."
gh api repos/$REPO/milestones -f title="v1.0 - Feature Complete" -f description="Features to make megabuff a complete, polished CLI for prompt optimization" -f state="open"

echo "Creating labels..."
gh label create "provider" --description "Provider-related features" --color "0052CC" --repo $REPO 2>/dev/null || true
gh label create "prompt-management" --description "Prompt management features" --color "5319E7" --repo $REPO 2>/dev/null || true
gh label create "output" --description "Output and formatting features" --color "FBCA04" --repo $REPO 2>/dev/null || true
gh label create "optimization" --description "Optimization features" --color "D93F0B" --repo $REPO 2>/dev/null || true
gh label create "dx" --description "Developer experience" --color "0E8A16" --repo $REPO 2>/dev/null || true
gh label create "integration" --description "External integrations" --color "1D76DB" --repo $REPO 2>/dev/null || true

echo "Creating issues..."

# Provider Expansion
gh issue create --repo $REPO --title "Add Google Gemini support" \
  --body "Implement Google Gemini API integration with models: gemini-pro, gemini-1.5-pro, gemini-1.5-flash" \
  --label "enhancement,provider" --milestone "v1.0 - Feature Complete"

gh issue create --repo $REPO --title "Add Azure OpenAI support" \
  --body "Implement Azure OpenAI API integration with custom deployment names and endpoints" \
  --label "enhancement,provider" --milestone "v1.0 - Feature Complete"

gh issue create --repo $REPO --title "Add Ollama/Local model support" \
  --body "Support for local Ollama models and custom endpoints for self-hosted LLMs. Zero-cost local prompt optimization." \
  --label "enhancement,provider" --milestone "v1.0 - Feature Complete"

# Prompt Management
gh issue create --repo $REPO --title "Add prompt history tracking" \
  --body "Store optimization history locally (~/.megabuff/history.json)
- \`megabuff history\` - List past optimizations
- \`megabuff history --show <id>\` - Show specific optimization
- \`megabuff history --clear\` - Clear history
- \`--no-history\` option to skip saving" \
  --label "enhancement,prompt-management" --milestone "v1.0 - Feature Complete"

gh issue create --repo $REPO --title "Add prompt templates support" \
  --body "Reusable prompt templates with variables:
- \`megabuff templates --save <name>\` - Save template
- \`megabuff templates --use <name>\` - Use template
- \`megabuff templates --list\` - List all templates
- Support template variables: \`{{variable}}\`" \
  --label "enhancement,prompt-management" --milestone "v1.0 - Feature Complete"

gh issue create --repo $REPO --title "Add batch processing" \
  --body "Optimize multiple files at once:
- \`megabuff batch <directory>\` - Optimize multiple files
- \`--glob \"*.txt\"\` - Filter files by pattern
- \`--output-dir <path>\` - Output directory
- Parallel processing with progress bar" \
  --label "enhancement,prompt-management" --milestone "v1.0 - Feature Complete"

# Output & Formatting
gh issue create --repo $REPO --title "Add multiple output formats" \
  --body "Support different output formats:
- \`--format json\` - JSON output with metadata
- \`--format markdown\` - Formatted markdown output
- \`--format diff\` - Show diff between original and optimized
- \`--format plain\` - Plain text (default)" \
  --label "enhancement,output" --milestone "v1.0 - Feature Complete"

gh issue create --repo $REPO --title "Add token count display" \
  --body "Show token counts before and after optimization to help users understand cost and length changes." \
  --label "enhancement,output" --milestone "v1.0 - Feature Complete"

# Optimization Features
gh issue create --repo $REPO --title "Add custom optimization goals" \
  --body "Tailored optimization styles:
- \`--goal clarity\` - Optimize for clarity
- \`--goal concise\` - Make prompt more concise
- \`--goal detailed\` - Add more detail/context
- \`--goal technical\` - Technical writing style
- \`--goal creative\` - Creative writing style" \
  --label "enhancement,optimization" --milestone "v1.0 - Feature Complete"

# Developer Experience
gh issue create --repo $REPO --title "Add testing framework" \
  --body "Set up Jest or Vitest for testing:
- Unit tests for core functions
- Integration tests for API calls (mocked)
- CI/CD pipeline with GitHub Actions
- Test coverage reporting" \
  --label "enhancement,dx" --milestone "v1.0 - Feature Complete"

gh issue create --repo $REPO --title "Add shell completions" \
  --body "Generate completion scripts for:
- Bash
- Zsh
- Fish
- PowerShell" \
  --label "enhancement,dx" --milestone "v1.0 - Feature Complete"

# Integrations
gh issue create --repo $REPO --title "Create VS Code extension" \
  --body "Full VS Code integration:
- Command palette integration
- Right-click context menu to optimize selection
- Inline optimization suggestions
- Status bar integration" \
  --label "enhancement,integration" --milestone "v1.0 - Feature Complete"

gh issue create --repo $REPO --title "Create GitHub Action" \
  --body "GitHub Action for CI/CD prompt optimization:
- Action for optimizing prompts in PRs
- Pre-commit hook support
- Documentation for CI/CD usage" \
  --label "enhancement,integration" --milestone "v1.0 - Feature Complete"

echo "Done! Created milestone and issues."
echo "View at: https://github.com/$REPO/milestones"
