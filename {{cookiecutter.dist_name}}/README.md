# {{cookiecutter.project_name}}

<p align="center">
    <em>{{cookiecutter.project_short_description}}</em>
</p>

[![build]({{cookiecutter.repository_url}}/workflows/Build/badge.svg)]({{cookiecutter.repository_url}}/actions)
[![codecov](https://codecov.io/gh/{{cookiecutter.repository_name}}/branch/master/graph/badge.svg)](https://codecov.io/gh/{{cookiecutter.repository_name}})
[![PyPI version](https://badge.fury.io/py/{{cookiecutter.dist_name}}.svg)](https://badge.fury.io/py/{{cookiecutter.dist_name}})

---

**Documentation**: <a href="{{cookiecutter.docs_url}}" target="_blank">{{cookiecutter.docs_url}}</a>

**Source Code**: <a href="{{cookiecutter.repository_url}}" target="_blank">{{cookiecutter.repository_url}}</a>

---

## Development

### Setup environment

We use [uv](https://docs.astral.sh/uv/) to manage the development environment and production build. Ensure it's installed on your system.

### Run unit tests

You can run all the tests with:

```bash
uv run pytest
```

### Format the code

Execute the following command to apply linting and check typing:

```bash
uv run ruff format .
uv run ruff --fix .
uv run mypy {{ cookiecutter.package_name }}/
```

### Publish a new version

You can bump the version, create a commit and associated tag with one command:

```bash
uv version patch
```

```bash
uv version minor
```

```bash
uv version major
```

Your default Git text editor will open so you can add information about the release.

When you push the tag on GitHub, the workflow will automatically publish it on PyPi and a GitHub release will be created as draft.

## Serve the documentation

You can serve the Mkdocs documentation with:

```bash
uv run mkdocs serve
```

It'll automatically watch for changes in your code.

## License

This project is licensed under the terms of the {{cookiecutter.open_source_license}}.
