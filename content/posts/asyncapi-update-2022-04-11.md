---
title: "AsyncAPI Spec and parsers update (19 March - 11 April 2022)"
date: 2022-04-11T00:00:00+01:00
tags: ["asyncapi"]
draft: false
---

This is another entry on my bi-weekly update about the AsyncAPI Spec and parsers. This time with a bit of delay.

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

### 2.4 release is happening this month!
[Work on 2.4 release](https://github.com/asyncapi/spec/issues/735) is progressing. [Sergio Moya](https://github.com/smoya) is the release coordinator.
**2.4** is expected to be released soon this month (April 2022).

The following changes are confirmed (some pending to be merged):

-  [Make Server Variables Object available as reusable objects under the Component object](https://github.com/asyncapi/spec/issues/707)
    - [feat: added server variable object as reusable object](https://github.com/asyncapi/spec/pull/717)
    - [feat: make server variables reuseable](https://github.com/asyncapi/spec-json-schemas/pull/174)
    - [feat: added methods and tests for serverVariables](https://github.com/asyncapi/parser-js/pull/476)
 - [feat: add security at the operation level](https://github.com/asyncapi/spec/pull/584)
   - [feat: add security at the operation level](https://github.com/asyncapi/spec/pull/584)
   - [feat: security support added to operation and operationTrait](https://github.com/asyncapi/spec-json-schemas/pull/189)
   - [feat: add security field at the operation level](https://github.com/asyncapi/parser-js/pull/505)
 - [Add support for messageId](https://github.com/asyncapi/spec/issues/458)
    - [feat: add messageId property](https://github.com/asyncapi/spec-json-schemas/pull/195)
    - [feat: add support for messageId](https://github.com/asyncapi/parser-js/pull/510)
 - [Unable to reuse Server Objects defined in Components.servers field](https://github.com/asyncapi/spec/issues/705)
    - [fix(Servers): allow to use union type of Server and Reference objects](https://github.com/asyncapi/spec/pull/706)

We are still on time to add last minute changes into this version, so please feel free to [suggest](https://github.com/asyncapi/spec/issues/735) any RFC you think it should be included on **2.4**! 

### Operations at components level RFC

[Maciej Urbańczyk](https://github.com/magicmatatjahu) has opened a new RFC PR for supporting operations at components level. Here is the first PR: https://github.com/asyncapi/spec/pull/749. It might be merged into **2.4**. 👀

### Allow grouping servers RFC

[Sergio Moya](https://github.com/smoya) has retaken [Allow grouping servers](https://github.com/asyncapi/spec/issues/654). The main idea now is to allow Servers to be tagged through [Tag Object](https://www.asyncapi.com/docs/specifications/v2.3.0#tagObject), however, there is an ongoing discussion regarding the best way to do this. 👀

### One new Spec `3.0` live meetings has been held 📹.

- https://github.com/asyncapi/community/issues/298

📅 The next one is going to happen on [16:00 UTC Wednesday April 13 2022](https://github.com/asyncapi/community/issues/307). Do not miss it!

## `spec-json-schemas`

### v2.13.2 got released! 🎉

It includes the fix: add v2 suffix to Go module](https://github.com/asyncapi/spec-json-schemas/pull/126) by [Sergio Moya](https://github.com/smoya).

## `parser-js`

### The rewrite to Typescript is moving forward!
[Migrate project to TypeScript](https://github.com/asyncapi/parser-js/issues/482) is slowly advancing. [Souvik](https://github.com/Souvikns) and [Maciej Urbańczyk](https://github.com/magicmatatjahu) moved forward adding some new code into [next-major](https://github.com/asyncapi/parser-js/tree/next-major) branch.

As mentioned in the previous bi-weekly update, this is not only a migration to TypeScript, but also a complete rewrite of the `parser-js`, adopting finally the Intent-driven API of [Parser-API](https://github.com/asyncapi/parser-api), which a POC was created a few weeks ago as well (See [this PR](https://github.com/asyncapi/parser-js/pull/453)).

## `parser-api`

### `v1.0.0-alpha.2` is out, now including all changes introduced on latest work on `parser-js`
[Parser-API](https://github.com/asyncapi/parser-api/blob/master/docs/v1.md) contains now all changes introduced on latest work on `parser-js`, as mentioned in [Update API according to the latest implementation in Parser-JS](https://github.com/asyncapi/parser-api/issues/53) by [Sergio Moya](https://github.com/smoya).

## `parser-go` 

### Support all recent AsyncAPI spec versions
[Sergio Moya](https://github.com/smoya) has added support (still PR) for all recent AsyncAPI spec versions in [this PR](https://github.com/asyncapi/parser-go/pull/117). This has been possible thanks to the latest fix released on [spec-json-schemas v2.13.2](https://github.com/asyncapi/spec-json-schemas/releases/tag/v2.13.2).