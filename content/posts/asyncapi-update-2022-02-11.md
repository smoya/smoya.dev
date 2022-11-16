---
title: "AsyncAPI Spec and parsers update (18 Jan - 11 Feb 2022)"
date: 2022-02-11T00:00:00+01:00
tags: ["asyncapi"]
draft: false
---

This is another entry on my bi-weekly update (yes, this time the range is a little more extensive) about the AsyncAPI Spec and parsers.

> **Note**
> This is not an official AsyncAPI update but a personal summary I volunteer to do.

This time I did not add metrics. As it is not a really well automated process, I decided to not spend time on it. If you really found it useful, please let me know so I can evaluate automating it.

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

### Spec v2.3.0 got released! 🎉

[Dale Lane](https://github.com/dalelane) led the release process this time. The release notes can be found [here](https://www.asyncapi.com/blog/release-notes-2.3.0).

As a small note, the [Make channels field optional within an AsyncAPI file](https://github.com/asyncapi/spec/issues/661) by [Sergio Moya](https://github.com/smoya) RFC has been discarded from `2.3.0` version because it finally introduces a breaking change (candidate for `3.0.0` version).

### Spec v3.0.0 work has been started! 🚀

The git branch `next-major` will be soon created on each involved repository so PR's can target such branch, following semantic-release process and bumping each dependant repository (thanks to [Lukasz Gornicki](https://github.com/derberg) to any new pre-release) automatically.

A global Github issue has been created to track the big picture of the work on the `3.0.0` version. The issue is [here](https://github.com/asyncapi/spec/issues/691).

- [Vladimir Gorej](https://github.com/char0n) created a new RFC [Remove $ref field from Channel Item Object in next breaking change version](https://github.com/asyncapi/spec/issues/699), which is the second part of the work included in `2.3.0` ([this issue](https://github.com/asyncapi/spec/issues/607)). Work is still in progress. 
- [Jonas Lagoni](https://github.com/jonaslagoni) worked in on [feat: initial intent API implementation](https://github.com/asyncapi/parser-js/pull/453) on the Parser-JS repository. A discussion has been initiated around the API design. We need your help here! 👀 
- [Sergio Moya](https://github.com/smoya) started the work for the RFC [Let channels be identified by an ID rather than their address](https://github.com/asyncapi/spec/issues/663). A discussion has been initiated here as well, and your help is needed! 👀 . The following PR's have been created:
  - [Spec work](https://github.com/asyncapi/spec/pull/719)
  - [JSON Schemas work](https://github.com/asyncapi/spec-json-schemas/pull/171)
- The small docs changes made by [Sergio Moya](https://github.com/smoya) in [this PR](https://github.com/asyncapi/parser-js/pull/447) are now ready to be reviewed.

Some people jumped into champion the following RFC's 👑, so big thanks to them!:
- [Simon Heimler](https://github.com/Fannon) is gonna champion [Application of message traits (intentionally) replacing existing attributes](https://github.com/asyncapi/spec/issues/505)
- [Maciej Urbańczyk](https://github.com/magicmatatjahu) is gonna champion [Inconsistencies for schemas in server.variables and channel.parameters](https://github.com/asyncapi/spec/issues/583).
- [Dale Lane](https://github.com/dalelane) is going to champion [Support for multiple Kafka clusters within a spec](https://github.com/asyncapi/spec/issues/465).

🗓 A periodical meeting for community members interested in the works around this release has been started. Two meetings have happened already:
- 1. First meeting notes and recording link can be found [here](https://github.com/asyncapi/community/issues/235#issuecomment-1016483507).
- 2. Second meeting notes and the recording link can be found [here](https://github.com/asyncapi/community/issues/250)

The next meeting is scheduled for the 16th of February.

You can always find some of the most critical progress on the [AsyncAPI spec v3.0.0 release journal ](https://github.com/asyncapi/community/issues/163#issuecomment-964141466).
You can find a list (grooming pending) of candidates to be included in `v3.0.0` at https://github.com/asyncapi/spec/milestone/18.

### Spec also had some more activity
- [Vladimir Gorej](https://github.com/char0n) opened a few issues regarding what seems to be a bug introduced in `2.3.0`:
  - [Unable to reuse Server Objects defined in Components.servers field](https://github.com/asyncapi/spec/issues/705). A PR has been created as well [here](https://github.com/asyncapi/spec/pull/706).
  - [Usage in Channel Item Object.servers field ](https://github.com/asyncapi/spec/issues/712). More community members are trying to figure out how critical it is and find a proper fix if it applies.
- [Vladimir Gorej](https://github.com/char0n) also opened the following PR [docs(spec): indicate in detail how Channel Item Object field resolves](https://github.com/asyncapi/spec/pull/714).
- [Gábor Bakos](https://github.com/aborg0) is fixing examples inside the spec examples with [docs: fix example for examples](https://github.com/asyncapi/spec/pull/701).
- [Mike Schenk](https://github.com/mike-schenk) created a PR with some cosmetic changes on the `id` fields in the spec examples that seem to use non-compliant URIS or URNs. A review is pending here 👀.
- More activity, including discussions and additions on the RFC [feat: add security at the operation level](https://github.com/asyncapi/spec/pull/584) PR by [sekharbans](https://github.com/sekharbans-ebay) have happened. It needs all the attention you can give! 👀

## Bindings

- A new feature for the Kafka binding was proposed in [feat: add schema registry infos to Kafka binding](https://github.com/asyncapi/bindings/pull/115) by [Laurent Broudoux](https://github.com/lbroudoux) regarding how to add schema registries information to the binding (registry URL, schema location, etc.).
- A potential bug has been raised on the AMQP binding with [amqp: vhost in channel binding](https://github.com/asyncapi/bindings/issues/116) by [Peter Wikström](https://github.com/mr-nuno). Few community members have jumped in to help define if this is a bug or not and how to fix it if it applies. Your thoughts are welcome! 👀
- [Jonas Lagoni](https://github.com/jonaslagoni) has suggested to [Move binding JSON schema files to main JSON schema repository](https://github.com/asyncapi/bindings/issues/113). What is your opinion on this? 👀


## `converter-js`

### `v0.7.0` got released! 🎉

It adds support for `2.3.0` spec version. See changes [here](https://github.com/asyncapi/converter-js/pull/76).

### Some other work

- A new fix has been created: [fix: handle JSON](https://github.com/asyncapi/converter-js/pull/96) by [Maciej Urbańczyk](https://github.com/magicmatatjahu).
- [Patrick Uhlmann](https://github.com/patrickuhlmann) suggested some improvements on the command line with [Converter should allow in-place conversion](https://github.com/asyncapi/converter-js/issues/93). Your opinion is welcome! 👀
- [Jonas Lagoni](https://github.com/jonaslagoni) suggested some improvements with [Converter cannot handle reusability](https://github.com/asyncapi/converter-js/issues/90).


## `extensions-catalog` got a really powerful feature request!

Even though some of the features mentioned in this PR were already suggested in the past, [Lukasz Gornicki](https://github.com/derberg) created a new issue called [MVP integration of extensions catalog with AsyncAPI tools to make extension catalog useful ](https://github.com/asyncapi/extensions-catalog/issues/78) to finally move forward with all of them and give the extensions catalog a real meaning.
This is a nice (and significant) improvement on how "official" extensions are treated in AsyncAPI. In short, the request's main goal is to do a big step forward in how official extensions are handled in AsyncAPI parsers so they can validate them and use them on generators and other tooling. Worth checking it out! 👀

## `spec-json-schemas` and few new bugs! 🐛

After intensively working on [feat!: split out definitions](https://github.com/asyncapi/spec-json-schemas/pull/128), [Jonas Lagoni](https://github.com/jonaslagoni) has raised a few bugs:

- [Not validating message payload against accurate schema](https://github.com/asyncapi/spec-json-schemas/issues/166).
- [Parameter defines it's own reference property](https://github.com/asyncapi/spec-json-schemas/issues/165).
- [Inconsistantly defined $ref for server](https://github.com/asyncapi/spec-json-schemas/issues/164)

A new future enhancement has been suggested with [Cleaning up how sub schemas are defined with references](https://github.com/asyncapi/spec-json-schemas/issues/167).

## `parser-js`

### `parser-js` `v1.14.1` got released!

Among `v1.14.0` that included all features for accomodating the `2.3.0` spec version, this new version includes a bug fix: [fix: do not use the Array.prototype.flat function](https://github.com/asyncapi/parser-js/pull/465) by [Maciej Urbańczyk](https://github.com/magicmatatjahu).

### More activity on `parser-js`

- [Ritik Rawal](https://github.com/ritik307) is working on the following improvement: [fix: throw meaningful errors](https://github.com/asyncapi/parser-js/pull/449). It is a very important improvement on DX since errors will become more meaningful after this change.
- [David Pereira](https://github.com/BOLT04) created a feature request [Export error type strings for other tools to use in error handling (e.g. invalid-json)](https://github.com/asyncapi/parser-js/issues/448). If you want to contribute to this, please go ahead! 👀