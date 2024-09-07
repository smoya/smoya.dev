---
title: "🍿 Interesting readings on Distributed Locks and the Redlock Pattern in Redis 🍿"
date: 2024-09-07T00:00:00+01:00
tags: ["software", "distributed systems", "readings"]
cover:
    image: "/locks.jpg"
    alt: "Hanging locks - By Rubén Bagüés"
    caption: "Photo by [Rubén Bagüés](https://unsplash.com/@rubavi78?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash) on [Unsplash](https://unsplash.com/photos/assorted-padlocks-hanged-on-wire-_DkmMhzrsYY?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash)"
draft: false
---

Are you interested in distributed systems? Grab your 🍿 because you might enjoy diving into an interesting discussion about distributed locks and the Redlock pattern used in Redis. These conversations took place a few years ago but they are still relevant in my opinion.

I first discovered an article by Martin Kleppmann: ["How to do distributed locking"](https://martin.kleppmann.com/2016/02/08/how-to-do-distributed-locking.html). It offers a deep dive into the complexities and challenges of implementing distributed locks, and focuses on Redis Redlock pattern. Kleppmann’s perspectives are thought-provoking and provide a solid understanding of the topic.

Following that, I found [the rebuttal from Salvatore Sanfilippo](http://antirez.com/news/101), the creator of Redlock, which is also worth reading (actually a must). In the response, Salvatore addresses the concerns raised by Kleppmann and defends the design decisions behind Redlock.

Interestingly, these discussions have even made their way into the [official Redis documentation](https://redis.io/docs/latest/develop/use/patterns/distributed-locks/). 

One last note: if you’re not deeply familiar with Redis internals, you should be aware that Redis, as of today, still does not use a monotonic clock for its TTL expiration mechanism, which is an important consideration when thinking about distributed locking. You can read more about it in the following [disclaimer](https://redis.io/docs/latest/develop/use/patterns/distributed-locks#disclaimer-about-consistency).

Happy readings! 🙌