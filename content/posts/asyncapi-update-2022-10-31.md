---
title: "AsyncAPI Spec and parsers update (half September + October 2022)"
date: 2022-10-31T00:00:00+01:00
tags: ["asyncapi"]
draft: false
---

This is another entry on my monthly (yes, monthly now) update about the AsyncAPI Spec and parsers

As a side note, due to a personal situation, I would be stopping reporting this updates for a couple of months. I still need to figure out if someone else could do it during that time :)

> **Note**
> This is not an official AsyncAPI update but a personal summary I volunteer to do.

What do I mean by **AsyncAPI Spec and parsers update?**. As most of the work around the AsyncAPI Spec is not only related to [https://github.com/asyncapi/spec](https://github.com/asyncapi/spec), each update will include the most significant recent activity from the following repositories:

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

### 2.5 got released! 🚀
**2.5.0** got released, and **[Vladimír Gorej](https://github.com/char0n)** was the Release Coordinator 🙌.

The changes introduced are:

#### Features

- Server Variables can be now referenced from inside the Server Object ([#776](https://github.com/asyncapi/spec/pull/776)) by [Vladimír Gorej](https://github.com/char0n)
- Decorating Server Object with tags ([#809](https://github.com/asyncapi/spec/pull/809)) by [Sergio Moya](https://github.com/smoya).
- Added new Google Cloud Pub/Sub Bindings ([#836](https://github.com/asyncapi/spec/pull/836)) by [Jeremy Whitlock](https://github.com/whitlockjc) 
- Added schema registry infos to Kafka binding ([#115](https://github.com/asyncapi/bindings/pull/115)) by [Laurent Broudoux](https://github.com/lbroudoux)
- Other enhancements
  - Clarified ChannelItem.$ref resolution rules ([#779](https://github.com/asyncapi/spec/pull/779)) by [Vladimír Gorej](https://github.com/char0n)
  - Clarification around URL resolution rules ([#782](https://github.com/asyncapi/spec/pull/782)) by [Vladimír Gorej](https://github.com/char0n)
  - Align wording with [RFC 2119](https://www.rfc-editor.org/rfc/rfc2119) ([#818](https://github.com/asyncapi/spec/pull/818)) by [Vladimír Gorej](https://github.com/char0n)

#### Fixes

- Added missing IBM MQ Operation Binding ([#840](https://github.com/asyncapi/spec/pull/840)) by [Maciej Urbańczyk](https://github.com/magicmatatjahu)

Full Changelog: https://github.com/asyncapi/spec/compare/v2.4.0...v2.5.0

### 3.0 work is moving on! 🧑‍🍳

Work on 3.0 is moving forward! These are some of the issues and PRs with recent activity:

- Issue: [Proposal to solve publish/subscribe confusion](https://github.com/asyncapi/spec/issues/618) by [Fran Méndez](https://github.com/fmvilas).
  - Topic: This is one of the core issues regarding **3.0.0**. Contains lots of discussions. The latest, started by [Iván García](https://github.com/ivangsa), is about some uncertainty around `Message Object`s ownership and how and where are they declared. 
  - This led into several new suggestions and approach:
    - [add server and channel traits objects](https://github.com/asyncapi/spec/pull/858)
      - This change will allow extending and reusing both `server` and `channel` objects by using traits.
    - A new approach suggestion in [feat request/response support](https://github.com/asyncapi/spec/pull/847#discussion_r1003488035) by [Heiko Henning](https://github.com/GreenRover).
- Issue: [Should we have messageId and name fields in Message Object?](https://github.com/asyncapi/spec/issues/862) by [Maciej Urbańczyk](https://github.com/magicmatatjahu).
  - Topic: Discussion about removing `messageId` and `name` fields from the `Message Object` in favour of just using the key on the channels map (x in `channel[x].messages`). There are some caveats this could cause.
  - Please join and leave your opinion ✍️
- Issue: [Clarify operation object channel reference](https://github.com/asyncapi/spec/issues/863) by [Jonas Lagoni](https://github.com/jonaslagoni).
  - Topic: There is uncertainty about which channels references inside the `Operation Object` are supposed to point to, or in other words, which ones are allowed to be used. Also this issue suggest a clarification in the `root.channels` level regarding the nature of it from the point of view of the Application.
  - Please join and leave your opinion ✍️
- Issue: [Should description fields be able to be referenced?](https://github.com/asyncapi/spec/issues/868) by [Maciej Urbańczyk](https://github.com/magicmatatjahu).
  - Topic: Discussion around `description` fields supporting reference to external markdown files.
  - Please join and leave your opinion ✍️
- Issue: [Required fields in Operation Trait Object](https://github.com/asyncapi/spec/issues/856) by [Maciej Urbańczyk](https://github.com/magicmatatjahu).
  - Topic: It seems that `channel` and `action` fields in `Operation Trait Object` doesn't make sense, and this issue suggests to remove them. 
  - Is there something else we are missing? Please join and leave your opinion ✍️
- Issue: [Introduce Info Item Object](https://github.com/asyncapi/spec/issues/795) by [Maciej Urbańczyk](https://github.com/magicmatatjahu).
- PR: [Unify all referencing mechanisms in v3](https://github.com/asyncapi/spec/pull/852) by [Fran Méndez](https://github.com/fmvilas) had a great progress.
  - Topic: At this moment, there is some inconsistency when referencing objects. In some places, $ref is required; in others, the value consists of the object's id (or the key in the map the object is located in). Removing such an inconsistency is the primary goal of this discussion. More conversations have been flowing around.
  - Please join and leave your opinion. There are a couple of important dicussions of your interest ✍️
- PR: [docs: clarify the meaning of components](https://github.com/asyncapi/spec/pull/803) by [Fran Méndez](https://github.com/fmvilas) is now merged into `next-major-spec` branch! 🎉
  - Topic: It clarifies the meaning of the `Components Object` and the meaning everything outside of it. Seems like a trivial change but the reality is that it sets the bases for reusability and what an Application is responsible for.
- PR: [Move operations to its own root object](https://github.com/asyncapi/spec/pull/806) by [Fran Méndez](https://github.com/fmvilas) is now merged into `next-major-spec` branch! 🎉
  - Topic: As the title says, Operations will not be directly linked inside the channel but in the root document itself. This helps with decoupling and reusing Operations.
- PR: [Add new channels object](https://github.com/asyncapi/spec/pull/827) by [Fran Méndez](https://github.com/fmvilas) is now merged into `next-major-spec` branch! 🎉
  - Topic: Channel object gets revamped.
    - Name is no longer an address; instead, a new field address holds that information.
    - It is not tied directly to an operation.
    - Messages are still part of the channel but not anymore to the operation.
- PR: [Add more reusable objects to the components object](https://github.com/asyncapi/spec/pull/792) by [Maciej Urbańczyk](https://github.com/magicmatatjahu) is now merged into `next-major-spec` branch! 🎉
  - Topic: adds External Documentation Object and Tag Object to become reusable objects by allowing them to be declared inside components.
- PR: [Move root tags and externalDocs to the info object](https://github.com/asyncapi/spec/pull/794) by [Maciej Urbańczyk](https://github.com/magicmatatjahu) is now merged into `next-major-spec` branch! 🎉
  - Topic: move both tags and externalDocs fields from the root of the AsyncAPI document to the [Info Object](https://www.asyncapi.com/docs/reference/specification/v2.4.0#infoObject).

As a side note, more Spec 3.0 live meetings have been held 📹. See [the list of issues with links to video recordings here](https://github.com/asyncapi/community/issues?q=is%3Aissue+is%3Aclosed+%22Spec+3.0+Meeting%22).

### New Reference(s) tooling is under discussion 🗣️

The main purpose behind this is to support referencing other schemas rather than JSON or convertible to JSON.

Few months ago, [Jonas Lagoni](https://github.com/jonaslagoni) opened [this draft PR](https://github.com/asyncapi/spec/pull/825) with the very first concepts on how this new referencing standard could work. 
Now, there is [this well-formed GitHub discussion](https://github.com/orgs/asyncapi/discussions/485) that includes all features and behaviours this new tooling might need to support as well as real-world use cases.
[Henry Andrews](https://github.com/handrews) (JSON Schema Co-Author) among other folks joined the discussion by sharing their vast experience in this matter.

If you want to be part of this journey, do not hesitate to join!

## spec-json-schemas

### v4.0.0 got released! 🎉

Brought by [Maciej Urbańczyk](https://github.com/magicmatatjahu), this new version [remove unsupported specs from NodeJS export](https://github.com/asyncapi/spec-json-schemas/pull/248), meaning no more support for versions lower than `2.0.0`.

### Validation for extensions (from extension-catalog) will be a thing! ⚙️

In the same way there are schemas for bindings, [TAHI Siham](https://github.com/asyncapi/spec-json-schemas/issues/280) wants to add those for extensions from the [Extensions Catalog](https://github.com/asyncapi/extensions-catalog/issues/78). This will become a really powerful addition! 💪

### Parameters object now have the proper schema for the reference property 🔧

[mastdev](https://github.com/mastdev) fixed the schema for the `$ref` property in the `Parameters` Object schema, so now is using a `oneOf` to allow both references or `Parameter`s object as `additionalProperties`. 
This is not a breaking change, because the behavior is not modified, but ensures consistency across all schemas.

See the PR in [update schema to resolve reference property issue](https://github.com/asyncapi/spec-json-schemas/pull/275).

### Bug allows to define Operation Traits with a double array 🐛

[Jonas Lagoni](https://github.com/jonaslagoni) reported [Traits can be defined as double arrays](https://github.com/asyncapi/spec-json-schemas/issues/273). Some code owners are confirming this is a bug.

## parser-js

### v2.0.0 beta is out! 🍇

[v2.0.0-next-major.8](https://github.com/asyncapi/parser-js/releases/tag/v2.0.0-next-major.8) is the latest beta released, as per today. I encourage you to grab it and test it in your projecs!

At a glance, it has an [improved API](https://github.com/asyncapi/parser-js/issues/401), it uses [Spectral](https://github.com/asyncapi/parser-js/issues/477) for validating AsyncAPI documents and it has been [rewritten to TypeScript](https://github.com/asyncapi/parser-js/issues/482) improving the developer experience by a lot.

You can see all the pending work on [Road to v2.0.0](https://github.com/asyncapi/parser-js/issues/481#issuecomment-1239500854).

All the changes are being merged into the [next-spec-major](https://github.com/asyncapi/parser-js/tree/next-major) branch and brought by [Maciej Urbańczyk](https://github.com/magicmatatjahu), and [Sergio Moya](https://github.com/smoya).

## bindings

### Allow using scalar types for some Kafka bindings values 🥂

[Viacheslav Poturaev](https://github.com/asyncapi/bindings/pull/150) submitted the PR [feat: kafka bindings with support for scalar parameter values](https://github.com/asyncapi/bindings/pull/150) where it adds support for not only using Schema type for some of the Kafka bindings values but also directly use a scalar such as a plain string.

The [PR](https://github.com/asyncapi/bindings/pull/150) is already approved but not merged yet, so you are still able to review! 👀

### Adding session expiry interval to MQTT5 bindings ⏱️
[Shreyansh Jain](https://github.com/sudoshreyansh) wants to add `sessionExpiryInterval` field to the [MQTT5 binding](https://github.com/asyncapi/bindings/tree/master/mqtt5) so it can be used both when generating code or for letting the user of the API know the expected session expiry interval.

Please, see [the PR](https://github.com/asyncapi/bindings/pull/157) and add your thoughts ✍️.

## avro-schema-parser

### Rewrite to TypeScript + implement the new Parser-JS 2.0 interface 🤝

[Implement new Parser-js interface + migrate to TypeScript](https://github.com/asyncapi/avro-schema-parser/pull/168) by [Sergio Moya](https://github.com/smoya) ports this schema parser to TypeScript and implements the new [Schema Parser Interface](https://github.com/asyncapi/parser-js/tree/next-major#custom-schema-parsers) available in the future Parser-JS 2.0.

The PR is still open and waiting for more feedback! 👀

## openapi-schema-parser

### Rewrite to TypeScript + implement the new Parser-JS 2.0 interface 🤝

[Rewrite to TS and adjust to the v2 ParserJS](https://github.com/asyncapi/openapi-schema-parser/pull/142) by [Maciej Urbańczyk](https://github.com/magicmatatjahu) ports this schema parser to TypeScript and implements the new [Schema Parser Interface](https://github.com/asyncapi/parser-js/tree/next-major#custom-schema-parsers) available in the future Parser-JS 2.0.

The PR is still open and waiting for more feedback! 👀

## raml-dt-schema-parser

### Rewrite to TypeScript + implement the new Parser-JS 2.0 interface 🤝

[Rewrite to TS and adjust to the v2 ParserJS](https://github.com/asyncapi/raml-dt-schema-parser/pull/141) by [Maciej Urbańczyk](https://github.com/magicmatatjahu) ports this schema parser to TypeScript and implements the new [Schema Parser Interface](https://github.com/asyncapi/parser-js/tree/next-major#custom-schema-parsers) available in the future Parser-JS 2.0.

The PR is still open and waiting for more feedback! 👀

## extensions-catalog

### MVP for making the Extensions Catalog finally useful! 🚀

[MVP integration of extensions catalog with AsyncAPI tools to make extension catalog useful](https://github.com/asyncapi/extensions-catalog/issues/78) is being taken by [TAHI Siham](https://github.com/Sihamtahi). 
The idea is to simplify the approach decided on the very beginning so it can provide value to the community soonish. 

You can take a look to some of the TODOs for making this happen:

- [Cleanup/simplify this repo](https://github.com/asyncapi/extensions-catalog/issues/104)
- [Create the JSON Schema files for the extensions](https://github.com/asyncapi/spec-json-schemas/issues/280) (See )