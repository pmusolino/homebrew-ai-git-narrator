# AI Git Narrator Homebrew Tap

This is a Homebrew tap for [AI Git Narrator](https://github.com/pmusolino/AI-Git-Narrator), a command-line tool that generates git commit messages and PR descriptions using AI.

## Installation

```bash
brew tap pmusolino/ai-git-narrator
brew install ai-git-narrator
```

## Usage

After installation, you can use the tool with:

```bash
ai-git-narrator --help
```

For detailed usage instructions, see the [main repository](https://github.com/pmusolino/AI-Git-Narrator).

## About

AI Git Narrator leverages OpenAI's GPT models, Google's Gemini models, and Ollama's local LLM models to generate insightful commit messages and pull request descriptions based on your Git diffs and commits.

**Built specifically for macOS** - designed to integrate seamlessly into macOS development workflows.

## Releasing a New Version

This section is for maintainers on how to update the formula when a new version of AI Git Narrator is released.

### Steps to Update the Formula:

1. **Create a new release** in the [main repository](https://github.com/pmusolino/AI-Git-Narrator):
   ```bash
   git tag 1.0.1  # Use the new version number
   git push origin 1.0.1
   ```

2. **Get the new tarball SHA256**:
   ```bash
   curl -sL https://github.com/pmusolino/AI-Git-Narrator/archive/refs/tags/1.0.1.tar.gz | shasum -a 256
   ```

3. **Update the formula** (`Formula/ai-git-narrator.rb`):
   - Update the `url` line with the new version number
   - Update the `sha256` with the hash from step 2

4. **Test the updated formula**:
   ```bash
   brew audit --strict --new --online pmusolino/ai-git-narrator/ai-git-narrator
   brew uninstall ai-git-narrator
   brew install pmusolino/ai-git-narrator/ai-git-narrator
   ```

5. **Commit and push the changes**:
   ```bash
   git add Formula/ai-git-narrator.rb
   git commit -m "Update ai-git-narrator to version 1.0.1"
   git push origin main
   ```

### Example Formula Update:

```ruby
# Change this:
url "https://github.com/pmusolino/AI-Git-Narrator/archive/refs/tags/1.0.0.tar.gz"
sha256 "5e606fa79287ef1a9c8049879d62be3fea2d29128bab41f3aa52611adf1aec60"

# To this:
url "https://github.com/pmusolino/AI-Git-Narrator/archive/refs/tags/1.0.1.tar.gz"  
sha256 "new_hash_from_step_2"
```
