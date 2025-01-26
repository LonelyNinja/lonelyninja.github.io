# Introduction

This is Tactical Triggernometry's main set of admin documentation

# Building

To build, you must have Python 3 and mkdocs

```bash
> python3 -m venv .mkdocs
> . ./.mkdocs/bin/activate
> pip install --upgrade pip
> pip install -r requirements.txt
> pip install mkdocs
> mkdocs build
> mkdocs serve
```

Deployment happens automatically when content is commited to main, or manually via:

```
> mkdocs gh-deploy
```

Note that this will change once deployment moves to a new server

