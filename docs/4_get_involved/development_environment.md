---
weight: 5
---

# Development Environment Setup

This guide covers setting up a development environment for contributing to SynBioHub. This is different from the [installation guide](../1_getting_started/installation.md) which focuses on deploying SynBioHub for production use.

## Prerequisites

Before setting up the development environment, ensure you have the following installed:

- **Git**: For version control and cloning repositories
- **Docker and Docker Compose**: For running services like Virtuoso database
- **Visual Studio Code** (recommended): With extensions for TypeScript, Python, and Docker

### Installing Prerequisites

1. Before trying to run SynBioHub2 locally on your PC, make sure that you have [Docker](https://docs.docker.com/get-started/get-docker/) installed. Be sure to also install [Git](https://git-scm.com/downloads) so that you can track your changes.

## Repository Setup

### Clone the Main Repositories

SynBioHub consists of multiple repositories. For development, you'll need:

```bash
# Create a workspace directory
mkdir synbiohub-dev
cd synbiohub-dev

# Clone the main repositories
git clone https://github.com/SynBioHub/synbiohub3.git  # Frontend
git clone https://github.com/SynBioHub/synbiohub.git    # Backend
git clone -b devtools https://github.com/SynBioHub/synbiohub2-docker.git # Docker Compose Setup (devtools branch)
```

## Launching

```bash
cd synbiohub2-docker

# Start everything with build from source
docker compose -f docker-compose-dev.yml up
```

## Environment Configuration

Within the `docker-compose-dev.yml` file there are some environment variables. These are configured for running the code on the same device you are accessing it from, ie localhost. If that is not true, ie cloudflare tunnels, then you will need to update the backend url.

## Development Workflow

### Code Changes

#### **Frontend Changes**: 
   - Edit files in `synbiohub3/src/`
   - Changes are automatically reloaded
   - Check browser console for errors

#### **Backend Changes**:
   - Edit files in `synbiohub/`
   - Restart the backend server for code changes:
      - Stop the backend server: `docker compose -f docker-compose-dev.yml down`
      - Start the backend server: `docker compose -f docker-compose-dev.yml up`
   - Check backend server logs for errors or browse to localhost:7777

### Testing

Tests are currently under development for the frontend.
Backend tests are handled by github actions on commit.

### Adding New Features

1. Create a feature branch: `git checkout -b feature/new-feature`
2. Make changes following the existing code patterns
3. Write tests for new functionality

### Plugin Development

For developing plugins, see the [plugins documentation](../3_advanced/plugins.md).

### Getting Help

- Check existing [GitHub issues](https://github.com/SynBioHub/synbiohub3/issues)
- Join the [developer mailing list](mailing_lists.md)
- Review the [API documentation](../3_advanced/api_documentation.md)

## Next Steps

Once your development environment is set up:

1. Explore the codebase structure
2. Review existing issues for contribution opportunities

Happy coding! 🎉
