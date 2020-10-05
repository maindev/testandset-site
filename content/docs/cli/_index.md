---
title: CLI reference
layout: docs
menu:
  main:
    parent: "Documentation"
---

The open source CLI for TestAndSet allows you to call the TestAndSet API with an ease. It is simple in usage with all needed commands (lock, get, refresh, unlock and auto-refresh). For validating the owner of a mutex a token is used which must be provided in the refresh, auto-refresh and unlock command.

## Installation

You can get the binary on the [releases page of our repository](https://github.com/maindev/testandset/releases) or [build from source](/docs/cli/building-from-source).

## Available commands

### Lock

Create your mutex with your custom key. There are some options for setting your lock with the CLI. The output can be a json-object or the pure refresh token. You can set a timeout, in which lock automatically tries to lock again at intervals. And you can also set an owner or some non-confidential data in the owner property.

```bash
$ testandset mutex lock --name $MUTEX_NAME --output [json|token]
    --timeout $TIMEOUT_IN_SECONDS --owner $MUTEX_OWNER_NAME
```

> Please keep in mind that everyone who will try to obtain mutex with the same name will be able to see the `owner` property. Don't put sensitive data there.

### Get

You can check if a mutex with a specific name currently exists.

```bash
$ testandset mutex get --name $MUTEX_NAME"
```
### Refresh

You can refresh an existing mutex for a small amount of time. To check that you are allowed to refresh you need the token provided by the lock command.

```bash
$ testandset mutex refresh --name $MUTEX_NAME --token $TOKEN"
```
### Unlock

You can unlock an existing mutex to free it for other users when your work is done. To check that you are allowed to unlock you need the token provided by the lock command.

```bash
$ testandset mutex unlock --name $MUTEX_NAME --token $TOKEN"
```

### Auto-refresh

You can automatically let your script refresh an existing mutex at intervals. When this command is stopped it will automatically unlock the mutex. To check that you are allowed to auto-refresh you need the token provided by the lock command.

```bash
$ testandset mutex auto-refresh --name $MUTEX_NAME --token $TOKEN"
```

## Example

Here is an example shell script how you can use TestAndSet CLI:

```bash
#!/bin/bash -eu

MUTEX_NAME=maindev-mutext-example-1
TOKEN=$(./TestAndSet mutex lock --name $MUTEX_NAME --output token --timeout 120)
./TestAndSet mutex auto-refresh --name $MUTEX_NAME --token $TOKEN &
PID=$!
trap "kill -TERM $PID" EXIT

echo "Doing something important!"
sleep 20
echo "Done."
```