# MCP Integrations

This repository is configured to work with several Model Context Protocol (MCP) integrations. Run the helper script to clone or update each server locally:

```bash
./scripts/install_mcps.sh
```

The script downloads the following projects into the `mcp/` directory:

- [`microsoft/playwright-mcp`](https://github.com/microsoft/playwright-mcp.git)
- [`GLips/Figma-Context-MCP`](https://github.com/GLips/Figma-Context-MCP.git)
- [`Arindam200/reddit-mcp`](https://github.com/Arindam200/reddit-mcp.git)
- [`mobile-next/mobilecli`](https://github.com/mobile-next/mobilecli.git)

Once the repositories are cloned, refer to each project's documentation for setup instructions and how to expose them as MCP servers.
