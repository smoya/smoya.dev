---
title: "AsyncAPI Spec and parsers update 🏖️Summer Edition part 2 🏖️ (July, August, and half of September 2022)"
date: 2022-09-18T00:00:00+01:00
tags: ["asyncapi"]
draft: false
---

This is a **special** entry on my bi-weekly update about the AsyncAPI Spec and parsers. I am grouping summer updates to happen every ~2 months. The reason is that there is less activity in the community during this period due to summer holidays, etc. This is the last special one, by the way.

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

### 2.4.1 efforts were stopped 🔧

The release effort was considered not worth it. Instead, changes will be included in version **2.5.**

See [Work on 2.4.1 release](https://github.com/asyncapi/spec/issues/821).

### 2.5 release is going to happen soon! 🚀

For the record, AsyncAPI [release cadence](https://github.com/asyncapi/spec/blob/master/RELEASE_PROCESS.md#release-cadence) marks September as a release month. This time, the release version will be **2.5.0**, and ****[Vladimír Gorej](https://github.com/char0n)** is the **[Release Coordinator](https://github.com/orgs/asyncapi/discussions/418#discussioncomment-3525877)** 🙌.

Most of the changes are going to be clarifications on the spec. However, you can see the **complete** list of RFCs that are going to be included but also some candidates in **[Work on 2.5.0 release](https://github.com/asyncapi/spec/issues/830).**

### 3.0 work is moving on! 🧑‍🍳

Work on 3.0 is moving forward slowly. These are the issues and PRs with recent activity:

- Issue: [Unify all referencing mechanisms in v3](https://github.com/asyncapi/spec/issues/829) by [Fran Méndez](https://github.com/fmvilas).
    - Topic: At this moment, there is some inconsistency when referencing objects. In some places, $ref is required; in others, the value consists of the object's id (or the key in the map the object is located in). Removing such an inconsistency is the primary goal of this discussion.
    - Please join and leave your opinion. ✍️
- PR: [Move operations to its own root object](https://github.com/asyncapi/spec/pull/806) by [Fran Méndez](https://github.com/fmvilas).
  - Topic: As the title says, Operations will not be directly linked inside the channel but in the root document itself. This helps with decoupling and reusing Operations.
    - 👀 Code review is needed 👀
- PR: [Add new channels object](https://github.com/asyncapi/spec/pull/827) by [Fran Méndez](https://github.com/fmvilas).
  - Topic: Channel object gets revamped.
    - Name is no longer an address; instead, a new field address holds that information.
    - It is not tied directly to an operation.
    - Messages are still part of the channel but not anymore to the operation.
    - 👀 Code review is needed 👀
- PR: [Add more reusable objects to the components object](https://github.com/asyncapi/spec/pull/792) by [Maciej Urbańczyk](https://github.com/magicmatatjahu).
    - Topic: adds External Documentation Object and Tag Object to become reusable objects by allowing them to be declared inside components.
    - 👀 Code review is needed 👀
- PR: [Move root tags and externalDocs to the info object](https://github.com/asyncapi/spec/pull/794) by [Maciej Urbańczyk](https://github.com/magicmatatjahu).
    - Topic: move both tags and externalDocs fields from the root of the AsyncAPI document to the [Info Object](https://www.asyncapi.com/docs/reference/specification/v2.4.0#infoObject).
    - This PR is accepted by some Code Owners and seems ready to go. But still, you can review it!.

As a side note, more Spec 3.0 live meetings have been held 📹. See [the list of issues with links to video recordings here](https://github.com/asyncapi/community/issues?q=is%3Aissue+is%3Aclosed+%22Spec+3.0+Meeting%22).

### A new schema referencing standard is being brewed! 💭

The main purpose behind this is to support referencing other schemas rather than JSON or convertible to JSON.

[Jonas Lagoni](https://github.com/jonaslagoni) opened [this draft PR](https://github.com/asyncapi/spec/pull/825) with the very first concepts on how this new referencing standard could work. More people joined the party, including maintainers of [OpenAPI](https://www.openapis.org/) and [JSON Schema](https://json-schema.org/), to set some base requirements and add clarifications about how existing technology, such as [JSON Schema $Ref Parser](https://github.com/APIDevTools/json-schema-ref-parser) works (used by [Parser-JS](https://github.com/asyncapi/parser-js)).

Everything is very abstract and still a draft, but if you want to be part of this journey, do not hesitate to join asap!

### Application of the Apache 2.0 license got fixed ⚖️

Because producing [FOSS](https://en.wikipedia.org/wiki/Free_and_open-source_software) is not only about writing software but also about licensing. AsyncAPI is using [Apache 2.0](https://www.apache.org/licenses/LICENSE-2.0.txt) license and still will keep using it. However, [Vladimír Gorej](https://github.com/char0n) detected a wrong application of it and created a fix. You can see it in the PR [improve license application](https://github.com/asyncapi/spec/pull/783).

## spec-json-schemas

### v3.1.0 got released! 🎉

Brought by [Sergio Moya](https://github.com/smoya), this new version [adds a new JSON Schema document listing all Schema-Store JSON Schema documents](https://github.com/asyncapi/spec-json-schemas/pull/237). This is needed to serve all the JSON Schema documents related to all AsyncAPI Spec versions through [Schema-Store](https://www.schemastore.org/).

### Custom validations are now listed in the documentation. 📝

[Sandra](https://github.com/Dindihub) made a [great addition](https://github.com/asyncapi/spec-json-schemas/pull/243) to the **README** file listing all custom validations needed to validate an AsyncAPI document and validating through the JSON Schema documents. See this fantastic new [Custom Validation Needs](https://github.com/asyncapi/spec-json-schemas#custom-validation-needs) section 🙌.

### Bindings versioning is materializing! 🚀

[Jonas Lagoni](https://github.com/jonaslagoni) did excellent [work](https://github.com/asyncapi/spec-json-schemas/pull/239) on handling binding versions and integrating them into the specification.

TL;DR: All bindings will now be located in spec-json-schemas repository, following a concrete folder structure that will allow people to work on bindings alongside the spec itself and continuously release new binding versions.

Even though [the PR](https://github.com/asyncapi/spec-json-schemas/pull/239) is not merged yet, it has been approved by a few code owners. But still, your feedback is always needed! ✍️

### A new tree shakeable module is on the way 🍃

[Maciej Urbańczyk](https://github.com/magicmatatjahu) opened a PR that [adds a "tree shakeable" module](https://github.com/asyncapi/spec-json-schemas/pull/248), which includes support for getting a list of supported AsyncAPI versions and TS types.

This new change will improve UX (by providing that list of supported versions) but also reduce the browser version size of this package.

### Dropping support for schemas prior to 2.0 ❌

[Lukasz Gornicki](https://github.com/derberg) is suggesting [in this issue](https://github.com/asyncapi/spec-json-schemas/issues/238) that we should drop support for schemas before **Spec 2.0**. The reason seems to be pretty simple: we don’t really give support for those Spec versions, so we should not support those schemas either.

There is an ongoing discussion you might want to join at [drop asyncapi json schemas prior 2.0 and release 4.0](https://github.com/asyncapi/spec-json-schemas/issues/238) ✍️👀.

### Bug validating AsyncAPI files using VS Code editor 🐛

This issue is a bit broader than it seems. It is not a bug on the AsyncAPI side, but this is affecting it.

Thanks to [Schema-Store](https://www.schemastore.org/) now providing AsyncAPI schemas globally, VS Code YAML plugin takes advantage of auto-validation of AsyncAPI documents. However, there seems to be an issue with how the plugin parses references, breaking AsyncAPI JSON Schema documents.

Some possible solutions (or hacks) are being discussed in [Vscode unable to resolve parts of the schema](https://github.com/asyncapi/spec-json-schemas/issues/247), so please join if you have some better alternative 🙏.

## parser-js

### v1.16.0 got released! 🎉

This [new release](https://github.com/asyncapi/parser-js/releases/tag/v1.16.0) includes a commit that fixes several bugs when this library is used within a browser. The [PR](https://github.com/asyncapi/parser-js/pull/572), brought by [Viacheslav Turovskyi](https://github.com/aeworxet) 🙌 fixes the following issues:

- [Parser does not work out of the box in non-node environments (websites)](https://github.com/asyncapi/parser-js/issues/344)
- [parseFromUrl does not resolve relative references](https://github.com/asyncapi/parser-js/issues/504)

### v2.0.0 is getting closer! 🧑‍🍳

[Migrating project to TypeScript](https://github.com/asyncapi/parser-js/issues/482) and **[Implementing Parser-API (Intent-Driven)](https://github.com/asyncapi/parser-js/issues/401)** moved forward, and now, only some last details are pending.

You can see all the pending work on [Road to v2.0.0](https://github.com/asyncapi/parser-js/issues/481#issuecomment-1239500854).

All the changes are being merged into the [next-spec-major](https://github.com/asyncapi/parser-js/tree/next-major) branch and brought by [Maciej Urbańczyk](https://github.com/magicmatatjahu), and [Sergio Moya](https://github.com/smoya).

[How to release the 2.0.0 version of the parser-js](https://github.com/asyncapi/parser-js/issues/585) is an ongoing discussion you might want to join.

There is also an issue regarding how Spectral (the new parser used in this version) does not [Support all edge cases with circular references](https://github.com/asyncapi/parser-js/issues/599). 👀 are needed!

## parser-api

### Reworks and tune-ups to the API

[Sergio Moya](https://github.com/smoya) created [Add Components, Security Requirement(s) models and other improvements](https://github.com/asyncapi/parser-api/pull/71). The PR contains all the required changes [Maciej Urbańczyk](https://github.com/magicmatatjahu) and [Sergio Moya](https://github.com/smoya) found to be missing or wrong during the implementation of [Implement Parser-API (Intent-Driven)](https://github.com/asyncapi/parser-js/issues/401).

There is an ongoing discussion around the necessary existence of the Components object you might want to [join](https://github.com/asyncapi/parser-api/pull/71#discussion_r972681154) 🙏.

## bindings

### Google Pub/Sub bindings are almost here! 🔜

[Jeremy Whitlock](https://github.com/whitlockjc) submitted a PR [adding googlepubsub bindings](https://github.com/asyncapi/bindings/pull/141). Few owners accepted the PR, and it seems it will be merged soon 🚀.

### Solace bindings rewording ✍️

[Michael Davis](https://github.com/damaru-inc) reworded the Solace binding docs to reflect the reality around which type of operation a binding applies to, e.g. a queue can only be used on a publish operation. Solace decided this was too restrictive and removed this wording to allow any binding to be used with either type of operation. The change can be seen [here](https://github.com/asyncapi/bindings/pull/142).

### Making usage of Schema Object consistent 🧑‍⚖️

[Vladimír Gorej](https://github.com/char0n) created [this PR](https://github.com/asyncapi/bindings/pull/143), which allows the use of Reference Object in binding objects fields and updates schemas to use the latest versions of AsyncAPI schemas (2.4.0).

### Adding value parameters for websocket bindings 🌎

[Souvik](https://github.com/Souvikns) is [adding 2 new value parameters for the websocket bindings](https://github.com/asyncapi/bindings/pull/144):

- headerValues
- queryValues

The PR is still being reviewed, so feel free to join and give your thoughts! 👀

### Align wording with RFC 2119 🔍

[Vladimír Gorej](https://github.com/char0n) is fixing some words that are not aligned with [RFC 2119](https://datatracker.ietf.org/doc/html/rfc2119). [The PR](https://github.com/asyncapi/bindings/pull/139) is open and accepted by some owners.

## avro-schema-parser

### v1.1.0 got released! 🎉

Thanks to [Ludovic Dussart](https://github.com/M3lkior), the Avro Schema Parser now supports record references described in [Manage reference to objects declared previously in avro schema](https://github.com/asyncapi/avro-schema-parser/issues/148). See the code changes in [this PR](https://github.com/asyncapi/avro-schema-parser/pull/154).

## parser-go

### v0.4.2 got released! 🎉

Thanks to [Jonathan Buch](https://github.com/BuJo), the Go Parser now supports [recursive dereferencing](https://github.com/asyncapi/parser-go/pull/145).