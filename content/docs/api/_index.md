---
title: API reference
layout: docs
menu:
  main:
    parent: "Documentation"
---

The API provides simple endpoints for creating your mutex with your own key for a small amount of time, refreshing the mutex when the work isn't done yet or unlocking it when you are done.

The API provides simple endpoints to lock, get, refresh and unlock your own mutex.

Lock a mutex with a key (6 to 32 signs containing letters, digits, dash, underscore and plus) for a small amount of time. You can refresh the mutex to continue your lock while your script is still working on data which should be unusuable for other access working with the same mutex key. When your work is done mutex keys can be unlocked until the next usage.

## API location

The API is hosted on https://api.testandset.com/

Every request should be targeting this server, e.g. to lock a mutex you need to execute GET on https://api.testandset.com/v1/mutex/my-mutex-id/lock?owner=me.

Always up-to-date API documentation can be found in Swagger UI page below. We encourage you to try it out.