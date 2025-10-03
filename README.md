# Setup mermaid-cli for GitHub Actions
Setup [mermaid-cli](https://github.com/mermaid-js/mermaid-cli) on GitHub Actions to use `mmdc`.

This action installs mermaid-cli for use in actions by installing it on tool cache using [AnimMouse/tool-cache](https://github.com/AnimMouse/tool-cache).

This action is implemented as a [composite](https://docs.github.com/en/actions/creating-actions/creating-a-composite-action) action.

This action currently only works on Ubuntu.

## Usage
To use `mmdc`, run this action before `mmdc`.

```yaml
steps:
  - name: Setup mermaid-cli
    uses: AnimMouse/setup-mermaid-cli@v1
    
  - run: mmdc -i input.mermaid -o output.png
```

### Specific version
You can specify the version you want. By default, this action downloads the latest version if the version is not specified.

```yaml
steps:
  - name: Setup mermaid-cli
    uses: AnimMouse/setup-mermaid-cli@v1
    with:
      version: 11.4.0
```

### GitHub token
This action automatically uses a GitHub token in order to authenticate with the GitHub API and avoid rate limiting. You can also specify your own read-only fine-grained personal access token.

```yaml
steps:
  - name: Setup mermaid-cli
    uses: AnimMouse/setup-mermaid-cli@v1
    with:
      token: ${{ secrets.GH_PAT }}
```