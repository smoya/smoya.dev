---
title: "AsyncAPI Spec and parsers update 🏖️Summer Edition 🏖️ (May and June 2022)"
date: 2022-06-30T00:00:00+01:00
tags: ["asyncapi"]
draft: false
---

This is a **special** entry on my bi-weekly update about the AsyncAPI Spec and parsers. During summer, I will be posting updates every one or two months. The reason is that there is less activity in the community during this period due to summer holidays, etc. (including me 😎).

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

### 2.4.1 is going to be released soon 🔧
Just a light patch over **2.4.0** but needed to clarify in the spec how reusability of [Server Variable Objects](https://www.asyncapi.com/docs/reference/specification/v2.4.0#serverVariableObject) work.
See [fix: allow reusability of Server Variable Objects](https://github.com/asyncapi/spec/pull/776) by [Vladimir Gorej](https://github.com/char0n).

### 2.5 work has been started! 🚀
AsyncAPI [release cadence](https://github.com/asyncapi/spec/blob/master/RELEASE_PROCESS.md#release-cadence) mentions that releases will happen on the following months:

-   January -> 2.3.0
-   April -> 2.4.0
-   June -> Nothing!
-   September

However, there was nothing to be released by June; therefore, no release happened. This means any proposal for **2.5.0** will potentially be released in **September**.

At this moment, the RFCs that can potentially target the **2.5.0** version are:

#### STOMP protocol

At this moment, the [bindings for STOMP](https://github.com/asyncapi/bindings/tree/master/stomp) protocol are not defined, but [Crain](https://github.com/Crain-32) started an excellent discussion on [Proper STOMP Protocol Bindings](https://github.com/asyncapi/spec/issues/787#) issue with some proposals on how to start defining this binding.

We are looking for help there, so as always, you are more than welcome to join the discussion 🖐️

#### Tags for Server Objects

[Tags](https://www.asyncapi.com/docs/reference/specification/v2.4.0#tagsObject) were used on different parts of an AsyncAPI document like [Operations](https://www.asyncapi.com/docs/reference/specification/v2.4.0#operationObject). However, adding [Tags](https://www.asyncapi.com/docs/reference/specification/v2.4.0#tagsObject) to [Servers](https://www.asyncapi.com/docs/reference/specification/v2.4.0#serverObject) were not possible yet. Some use cases motivated this new addition, such as [Allowing grouping servers](https://github.com/asyncapi/spec/issues/654) by their environment and other properties.

See [feat: add tags field to Server Object](https://github.com/asyncapi/spec/pull/809) by [Sergio Moya](https://github.com/smoya).

### 3.0 work is moving on! 🧑‍🍳

Work on 3.0 is moving forward slowly. These are the issues and PRs with recent activity:

- [Creating the AsyncAPI Domain specification](https://github.com/asyncapi/spec/issues/811) by [Fran Méndez](https://github.com/fmvilas).
	- Topic: This time, Fran introduces a completely **new spec** for replacing those files people are almost forced to create when defining broker-based architectures, including all shareable objects.
	- This one requires the attention from "all of you" since it could become a huge new thing, in terms of concepts, for the AsyncAPI ecosystem. 🆘 
- [Heiko Henning](https://github.com/GreenRover) is now championing [Support request/reply pattern](https://github.com/asyncapi/spec/issues/94#) 👨‍🚀🚀
	- Topic: Created initially by [Adrian Hope-Bailie](https://github.com/adrianhopebailie), this issue attempts to allow defining a request/reply pattern into AsyncAPI spec Channels and Operations.
	- Your review and participation in this issue are more than welcome! 🆘
	- You can watch several live meetings that have been held regarding this topic:
		- [Request/reply discussion, 15:00 UTC Monday May 16th 2022](https://github.com/asyncapi/community/issues/352)
		- [Request/reply discussion, 15:00 UTC Monday May 23rd 2022](https://github.com/asyncapi/community/issues/368)
		- [Request/reply discussion, 14:00 UTC Thursday June 9th 2022](https://github.com/asyncapi/community/issues/377)
- [Introduce `Info Item Object`](https://github.com/asyncapi/spec/issues/795#) by [Maciej Urbańczyk](https://github.com/magicmatatjahu).
	- Topic: Identifying common info fields for all main objects of the spec and creating a common object to be reused.
	- There is an ongoing discussion on [the PR](https://github.com/asyncapi/spec/pull/796) that you might want to check. 
- [move root tags and externalDocs to the info object](https://github.com/asyncapi/spec/pull/794) by [Maciej Urbańczyk](https://github.com/magicmatatjahu).
	- Topic: move both `tags` and `externalDocs` fields from the root of the AsyncAPI document to the [Info Object](https://www.asyncapi.com/docs/reference/specification/v2.4.0#infoObject).
- [add more reusable objects to the components object](https://github.com/asyncapi/spec/pull/792) by [Maciej Urbańczyk](https://github.com/magicmatatjahu).
	- Topic: adds `External Documentation Object` and `Tag Object` to become reusable objects by allowing them to be declared inside `components`.
- [extend Schema Object to allow defining custom formats](https://github.com/asyncapi/spec/pull/797) by [Maciej Urbańczyk](https://github.com/magicmatatjahu).
	- Topic: Allow custom formats on Schema Object, and deprecate the `schemaFormat` field in the `Message Object`.
- [add metadata object, server trait and channel trait](https://github.com/asyncapi/spec/pull/796) by [Maciej Urbańczyk](https://github.com/magicmatatjahu).
	- Topic: The original idea was to define a new `Metadata Object` with some common fields that other spec objects could reuse. 
	- After a few iterations, the direction it took is that some of those fields would be added to the final objects rather than inherit them from a new object.
- [External docs/Contact as collection](https://github.com/asyncapi/spec/issues/799) by [Maciej Urbańczyk](https://github.com/magicmatatjahu).
	- Topic: allow both `externalDocs` and `contact` fields to accept a collection of the expected objects instead of just one. 

As a side note, more Spec `3.0` live meetings have been held 📹. See [the list of issues with links to video recordings here](https://github.com/asyncapi/community/issues?q=is%3Aissue+is%3Aclosed+%22Spec+3.0+Meeting%22).

### Measuring the adoption of AsyncAPI Spec 
Time ago, [Lukasz Gornicki](https://github.com/derberg) brought the idea of [Measuring AsyncAPI spec adoption](https://github.com/asyncapi/website/issues/780). For that, he suggested measuring the amount of AsyncAPI users that work with AsyncAPI documents by:

- Adding AsyncAPI JSON Schema files into [JSON Schema Store](https://www.schemastore.org/). You can read more about the reason behind this in [Why would I use schema store](https://github.com/SchemaStore/schemastore/issues/1048) issue.
- Collecting metrics about downloads of AsyncAPI JSON Schema files.

To achieve that, [Sergio Moya](https://github.com/smoya) ended up with:

- Coding a new [Netlify Edge Function](https://github.com/asyncapi/website/blob/master/netlify/edge-functions/serve-definitions.ts) that redirects traffic from `asyncapi.com/definitions/<file>.json` and `asyncapi.com/schema-store/<file>.json` to the raw GitHub URL's for the definitions and schemas avaialble in https://github.com/asyncapi/spec-json-schemas.
- In the same [Netlify Edge Function](https://github.com/asyncapi/website/blob/master/netlify/edge-functions/serve-definitions.ts), to send metrics to an AsyncAPI New Relic account. You can see a screenshot of the internal metrics dashboard: [![Screenshot of the AsyncAPI JSON Schema file downloads New Relic dashboard](https://user-images.githubusercontent.com/1083296/177828887-82f1cec3-c62b-4aa7-8541-53a4e74420ee.png)](https://user-images.githubusercontent.com/1083296/177828887-82f1cec3-c62b-4aa7-8541-53a4e74420ee.png)
- Updating AsyncAPI entry in [JSON Schema Store](https://www.schemastore.org/) to serve the JSON Schema files from the new paths on the AsyncAPI website. See [feat: update AsyncAPI schema URLs](https://github.com/SchemaStore/schemastore/pull/2310). 
- There are more pending fixes (like Schema Store plugins supporting all versions of the spec), but mainly all is working as expected.

## `spec-json-schemas`

### `v3.0.0` got released! 🎉
Brought by [Jonas Lagoni](https://github.com/jonaslagoni), this new version [introduces split definitions](https://github.com/asyncapi/spec-json-schemas/pull/184) and bundling behavior to provide better maintainability of the JSON Schema files.

### Bindings JSON Schema files are now in `spec-json-schemas` repository.
From now on, and thanks to [Jonas Lagoni](https://github.com/jonaslagoni), all AsyncAPI JSON Schema files are together under the same repository, making it easier to find and distribute.

In this other PR, [add specific binding schemas](https://github.com/asyncapi/spec-json-schemas/pull/224), [Jonas Lagoni](https://github.com/jonaslagoni) is also splitting `bindingsObject` into the 4 specific bindings for **operation**, **channel**, **message**, and **server**. 

The next step is to figure out [how to version the binding schemas alongside spec schemas](https://github.com/asyncapi/bindings/issues/113).

## `parser-js`

### `v1.15.1` got released! 🎉
This [new release](https://github.com/asyncapi/parser-js/releases/tag/v1.15.1) includes a commit that fixes an [inconsistent behavior of message/messages/hasMultipleMessages](https://github.com/asyncapi/parser-js/issues/475). The [PR](https://github.com/asyncapi/parser-js/pull/554), brought by [Tenischev](https://github.com/Tenischev)

### The rewrite to Typescript is moving forward.
[Migrate project to TypeScript](https://github.com/asyncapi/parser-js/issues/482) moved forward and now, all the models got ported to Typescript, all of them following the Intent-driven API of [Parser-API](https://github.com/asyncapi/parser-api), which has been also updated in parallel. Big shout-out to [Maciej Urbańczyk](https://github.com/magicmatatjahu), who did most of the job during this time! 🥇🥇

You can see all the work on [next-spec-major](https://github.com/asyncapi/parser-js/tree/next-major) branch.

### Improving generated $id for Schemas
[Heiko Henning](https://github.com/GreenRover) submitted a PR adding [new options to generate nice $id](https://github.com/asyncapi/parser-js/pull/543). This change will improve UX when generating code or documentation.

The PR is a Work In Progress, so you are encouraged to drop a review! ✍️

## `parser-api`

### `v1.0.0-alpha.3` is out, now including all changes introduced on latest work on `parser-js`
[Parser-API](https://github.com/asyncapi/parser-api/blob/master/docs/v1.md) contains now all changes introduced on latest work on `parser-js`. See the PR at [# docs: update parser-api](https://github.com/asyncapi/parser-api/pull/64) by  [magicmatatjahu](https://github.com/magicmatatjahu).

## `bindings`

### Adding support for multiple HTTP methods
[souvik](https://github.com/Souvikns) is [adding support for multiple methods in HTTP bindings] in an OpenAPI fashion. The issue is still waiting to be reviewed after the last changes it introduced, but basically, it attempts to remove one considerable limitation: only one HTTP method is allowed as of today.
This requires a few reviews, thinking out of the box, and finding the best way to achieve that, and this is a perfect starting point!

A deeper discussion about this topic is being handled in [[FEATURE REQUEST] HTTP with multiple methods](https://github.com/asyncapi/bindings/issues/2#issuecomment-1154215464) as well.

### `bindings` also had some more activity
- [fix: move WebSockets binding details to server and remove the method option](https://github.com/asyncapi/bindings/pull/65) PR has been reopened.

## `converter-js` 

### `v1.0.0` got released! 🎉

Brought by [Maciej Urbańczyk](https://github.com/magicmatatjahu), this release removes **CLI** from the repo as it is now an independent tool living in https://github.com/asyncapi/cli. It also does some cleanups.