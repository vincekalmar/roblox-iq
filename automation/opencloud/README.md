# Roblox Open Cloud Automation — Scaffold

Open Cloud will eventually bridge external asset pipelines and Roblox services that Studio MCP does not cover.

Likely first use: upload/update finished assets from an external 3D/image pipeline.

## Security

- never hard-code API keys in scripts
- never commit credentials
- use least-privilege keys/scopes
- read credentials from local environment/secure storage
- keep upload targets explicit so a script cannot accidentally publish to the wrong experience/account

## Before implementing

Confirm the exact current Roblox Open Cloud endpoints, scopes, asset formats, rate/usage constraints, and authentication guidance from official Roblox documentation.
