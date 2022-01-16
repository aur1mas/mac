# OSX Initial Setup

## Context
I use Backups (Time Machine) only to restore my machine to previous state. For new MacBook setup - I like to do fresh install. Not drag all the the stuff from old machine to new one.

## Structure

.sh files are structured by applications I use daily.

- `core.sh` -> all the essential software to boostrap my work;
- `php.sh` -> installs PHP & configures it. My primary programming language;
- `go.sh` -> language I'm learning;
- `ohmyzh.sh` -> can't imagine my daily work without it;

If you need everything - run `all.sh`.

## Install

To install all packages with related software:

```
sh -c "$(curl -fsSL https://raw.github.com/aur1mas/mac/master/all.sh)"
```

or run localy `sh all.sh`.

Only essential software:

```
sh -c "$(curl -fsSL https://raw.github.com/aur1mas/mac/master/core.sh)"
```

## Aditional Software

Additional Software I use which (at given moment) couldn't be installed via Brew:

- [Craft](https://www.craft.do/)

## Contribute

Use this repository as a guidance for your setup. I strongly recommend forking it & configuring by your needs.

If you notice any mistakes or want to have a discussion then open Pull-Request or create an issue.

## Resources

Below you can find resources which I used to create these snippets:

- https://gist.github.com/codeinthehole/26b37efa67041e1307db
- https://github.com/sizovs/mac