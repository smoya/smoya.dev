---
title: "AsyncAPI Spec and parsers update (1 March - 18 March 2022)"
date: 2022-03-18T00:00:00+01:00
tags: ["asyncapi"]
draft: false
---

This is another entry on my bi-weekly update about the AsyncAPI Spec and parsers.

> **Note**
> This is not an official AsyncAPI update but a personal summary I volunteer to do.

What do I mean by **AsyncAPI Spec and parsers update?**. As most of the work around the AsyncAPI Spec is not only related to https://github.com/asyncapi/spec, each update will include the most significant recent activity from the following repositories:

- [spec](https://github.com/asyncapi/spec)
- [bindings](https://github.com/asyncapi/bindings)
- [extensions-catalog](https://github.com/asyncapi/extensions-catalog)
- [spec-json-schemas](https://github.com/asyncapi/spec-json-schemas)
- [parser-js](https://github.com/asyncapi/parser-js)
- [parser-api](https://github.com/asyncapi/parser-api)
- [parser-go](https://github.com/asyncapi/parser-go)
- [openapi-schema-parser](https://github.com/asyncapi/openapi-schema-parser)
- [raml-dt-schema-parser](https://github.com/asyncapi/raml-dt-schema-parser)
- [avro-schema-parser](https://github.com/asyncapi/avro-schema-parser)
- [tck](https://github.com/asyncapi/tck)
- [converter-js](https://github.com/asyncapi/converter-js)
- [converter-go](https://github.com/asyncapi/converter-go)

Feel free to ask me to include any other repository if you consider it makes sense. Also, in case you want to help me with these updates :)

## Spec

### 2.4 release is getting closer!
[Work on 2.4 release](https://github.com/asyncapi/spec/issues/735) has been initiated. [Sergio Moya](https://github.com/smoya) is the release coordinator.
2.4 is expected to be released in April 2022.

It is a work in progress to find out all the possible PR's that it will be included. For now, [feat: added server variable object as reusable object](https://github.com/asyncapi/spec/pull/717) is the first candidate and will be merged into the release branch soon.

### Deprecation of messages. Does it sound interesting to you?

[A message header to signal deprecation](https://github.com/asyncapi/spec/issues/640) issue has been retaken by [Erik Wilde](https://github.com/dret). 
The idea would be to set a standard message header to indicate that the message contains deprecated payload. If you find it useful, please write your thoughts on the issue. 👀

## "Remote and local servers" issue needs your help!

[Thorsten Hake](https://github.com/thake) has suggested a new approach on how to handle [Remote and local servers](https://github.com/asyncapi/spec/issues/689#issuecomment-1058193884). A discussion around it has been initiated, and we require more ideas on implementing it. 👀

## The idea around "Defining a collection of applications" has been discussed even more.

The recording for the last live session that has been held on this topic can be found [here](https://github.com/asyncapi/spec/issues/658#issuecomment-1056986670).
After the session, more feedback was shared on the issue that is worth checking with all of you who are interested in this topic.
During the last `3.0.0` meeting, [Jonas Lagoni](https://github.com/jonaslagoni) has suggested that it won't make sense to include this into `3.0.0` spec release. Also, [Fran Méndez](https://github.com/fmvilas) suggested that it might make sense to create a different new spec for this matter.
Worth checking that part of the live stream [here](https://youtu.be/GRfVx5bd9ag?t=2586).

## A way to document a guaranteed compatibility mode for produced messages.

Sometimes you might need to specify a compatibility mode for types of schema changes on your messages. This is pretty common for [Avro](https://docs.confluent.io/platform/current/schema-registry/avro.html).
[Thorsten Hake](https://github.com/thake) is asking [Is there a way to document the guaranteed compatibility mode for produced messages?](https://github.com/asyncapi/spec/issues/727) and suggesting that it might be a good idea to have the ability to document such compatibility mode. 

Looking for ideas on how to implement it! 💡 

## Two new Spec `3.0` live meetings have been held 📹.

- https://github.com/asyncapi/community/issues/270
- https://github.com/asyncapi/community/issues/282

## `spec` also had some more activity

- [Vladimir Gorej](https://github.com/char0n), as per [this comment](https://github.com/asyncapi/community/issues/270#issuecomment-1060563677), is gonna retake the work on [Remove $ref field from Channel Item Object in next breaking change version (3.0.0)](https://github.com/asyncapi/spec/issues/699) 🚀
- [Dale Lane](https://github.com/dalelane) did a super great job updating the documentation regarding the Spec release process. You can find the updated documentation here: https://github.com/asyncapi/spec/blob/master/RELEASE_PROCESS.md
- [Thorsten Hake](https://github.com/thake) opened a new issue to [Clarify usage or URN for an AsyncAPI spec id](https://github.com/asyncapi/spec/issues/725) and suggested to drop the current usage of [URNs]() in the spec, suggesting to drop them by a different approach. Your thoughts are welcome! 💡 
- [Sergio Moya](https://github.com/smoya) suggested a new git branch naming convention for the release branches at [Use next branch for next minor releases](https://github.com/asyncapi/spec/issues/734), so we can reduce some of the pain points we are facing today during the release process.
- [Andreas Lindhé](https://github.com/lindhe) is asking for a **simple** AsyncAPI example document based on AMQP, as we have for MQTT. Do you want to help [Andreas Lindhé](https://github.com/lindhe)? ✍️

## `spec-json-schemas`

### All Schema definitions are now split out into separate files

[Jonas Lagoni](https://github.com/jonaslagoni) did a fantastic job splitting all the schema definitions into separate files so contributing to them becomes more manageable.

It is pending to be released (very soon), but the work is done and merged (you can see the PR [here](https://github.com/asyncapi/spec-json-schemas/pull/128)).

### v2.13.1 got released! 🎉

It includes the [fix: force object type for message trait's headers](https://github.com/asyncapi/spec-json-schemas/pull/102) by [Maciej Urbańczyk](https://github.com/magicmatatjahu).

## `converter-js`

### It got rewriten into TypeScript 🚀

[Maciej Urbańczyk](https://github.com/magicmatatjahu) did an awesome job rewriting the package into TypeScript 🙌. Here is the PR: [refactor: rewrite to TS and start using Jest](https://github.com/asyncapi/converter-js/pull/115) 

## Bindings

### New version for Solace binding is out! 🎉

[Michael Davis](https://github.com/damaru-inc) updated the **Solace** binding with [feat: add topicSubscriptions to direct destinations](https://github.com/asyncapi/bindings/pull/107), which is adding `topicSusbscriptions` field in the topic, so you can define a list of topics that the client subscribes to.

### Shall we move binding JSON Schema files to the main JSON Schema repository?

[Move binding JSON schema files to main JSON schema repository](https://github.com/asyncapi/bindings/issues/113) got revived **again**, and a discussion around where the JSON Schema files for bindings should be located was started. Please join! 👀

## `parser-js` 

### Migration to TypeScript has been started + new Parser API!

[Migrate project to TypeScript](https://github.com/asyncapi/parser-js/issues/482) is becoming a real thing now. [Souvik](https://github.com/Souvikns), [Maciej Urbańczyk](https://github.com/magicmatatjahu), and [Sergio Moya](https://github.com/smoya) are working hard on this task, and the progress can be seen in [next-major](https://github.com/asyncapi/parser-js/tree/next-major).

Worth mentioning this is not only a migration to TypeScript, but also a complete rewrite of the `parser-js`, adopting finally the Intent-driven API of [Parser-API](https://github.com/asyncapi/parser-api), which a POC was created a few weeks ago as well (See [this PR](https://github.com/asyncapi/parser-js/pull/453)).