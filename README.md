# moatazhamada/homebrew-tap

Homebrew tap for [Omni Skills](https://github.com/moatazhamada/ai-omni-skills)
native binaries.

## Install

```bash
brew tap moatazhamada/tap
brew install omni-skills
```

## Updating the formula after a release

1. Wait for the GitHub Actions release workflow to finish and attach the binaries.
2. In the `ai-omni-skills` repo, run:
   ```bash
   ./distributions/update-distribution-assets.sh 1.3.2
   ```
3. Copy the printed SHA256 hashes into `Formula/omni-skills.rb`.
4. Update the `version`, `url`, and `sha256` fields for all architectures.
5. Commit and push this tap repository.
