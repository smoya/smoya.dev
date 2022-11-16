---
title: "AsyncAPI Spec and parsers update (1 Jan - 17 Jan 2022)"
date: 2022-01-18T00:00:00+01:00
tags: ["asyncapi"]
draft: false
---

This is another entry on my bi-weekkly update about the AsyncAPI Spec and parsers.

> **Note**
> This is not an official AsyncAPI update but a personal summary I volunteer to do.

What do I mean by **AsyncAPI Spec ecosystem?** As most of the work around the AsyncAPI Spec is not only related with https://github.com/asyncapi/spec, each update will include the most significant recent activity from the following repositories, which I consider them to be part of the same ecosystem:

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

### Spec v2.3.0 work is at 80%!

Those are the PR's that have been merged and are gonna also be included in `2.3.0` version 🎉:

- [docs: fix the type and docs of Operation.message field](https://github.com/asyncapi/spec/pull/603) by [Vladimir Gorej](https://github.com/char0n).
- [docs: use proper term for {} characters](https://github.com/asyncapi/spec/pull/642) by [David Vancina](https://github.com/davidvancina-mulesoft).
- [Allow servers and channels to be defined inside components](https://github.com/asyncapi/spec/issues/660) by [Sergio Moya](https://github.com/smoya).
- [Add Solace bindings to the list of supported bindings in the spec](https://github.com/asyncapi/spec/pull/666) by [Michael Davis](https://github.com/damaru-inc).
- [fix: make pattern and patternProperties unicode ECMA-262 compliant](https://github.com/asyncapi/spec-json-schemas/pull/145) by [Sergio Moya](https://github.com/smoya).

At the same time, [Dale Lane](https://github.com/dalelane) did some new additions to the release notes that will be published in the AsyncAPI blog. See the PR [here](https://github.com/asyncapi/website/pull/512).

### And whats that 20% left?

- [Make channels field optional within an AsyncAPI file](https://github.com/asyncapi/spec/issues/661) by [Sergio Moya](https://github.com/smoya) has been moved forward and the following two PR's are waiting to be reviewed:
  - Spec: https://github.com/asyncapi/spec/pull/682
  - Spec JSON Schemas: https://github.com/asyncapi/spec-json-schemas/pull/146

[feat: add security at the operation level](https://github.com/asyncapi/spec/pull/584) by [
sekharbans](https://github.com/sekharbans-ebay) PR had a lot of activity. In fact, we dedicated a SIG meeting to this topic. The reason is that there was (and still is) uncertainty about the fact Security requirements declared at Operation level should or shouldn't inherit requirements from Server level.
Please join the discussion on the [PR](https://github.com/asyncapi/spec/pull/584) so we can unblock it and move forward. The following PR's are opened and feedback/review is wanted!:

- Parser-JS: [feat: add security field at the operation level](https://github.com/asyncapi/parser-js/pull/445).
- Spec-JSON-Schemas: [Security support added to operation and operationTrait](https://github.com/asyncapi/spec-json-schemas/pull/148)

There is some uncertainty about this feature to be included in `2.3.0`, as always, better to not rush and take decissions after giving few rounds.

 ### Spec v3.0.0 work is slowly progressing!

As always, You can find some of the most critical progress on the [AsyncAPI spec v3.0.0 release journal ](https://github.com/asyncapi/community/issues/163#issuecomment-964141466)

Work on the [Parser-API](https://github.com/asyncapi/parser-api) has been initiated. 

[Jonas Lagoni](https://github.com/jonaslagoni) is analysing all the API by trying to implement it in a mock version of the [Parser-JS](https://github.com/asyncapi/parser-js/). The plan is to quickkly iterate over the Parser-API spec definition and accommodate all the missing features. Thanks to that work, some issues have been created:

- [Add description to each intent](https://github.com/asyncapi/parser-api/issues/39)
- [Detaching info and license object from spec structure](https://github.com/asyncapi/parser-api/issues/43) <- Help wanted! 👀

Some docs are being changed as well in [this draft PR](https://github.com/asyncapi/parser-js/pull/447) by [Sergio Moya](https://github.com/smoya) at the same time we prepare everything for the `v3.0.0` release in terms of CI [here](https://github.com/asyncapi/parser-js/pull/442).

🗓 Something important to mention: a dedicated meeting for community members involved in works related with this release has been scheduled. See https://github.com/asyncapi/community/issues/235

You can find a list (grooming pending) of candidates to be included in `v3.0.0` at https://github.com/asyncapi/spec/milestone/18.

### Spec also had some more activity
- [Vladimir Gorej](https://github.com/char0n) is championing [ChannelItem.$ref field deprecation + proposal how to replace it with simpler and more flexible solution](https://github.com/asyncapi/spec/issues/607) 🎉
- Work on [fix: redefine the trait inheritance behavior](https://github.com/asyncapi/spec/pull/532) has been retaken by [Simon Heimler](https://github.com/Fannon), who has presented a completely different vision on what they presented few months ago. Worth to take a look on this! 👀

## A new feature for the Solace binding has landed as a PR
[feat: add topicSubscriptions to direct destinations](https://github.com/asyncapi/bindings/pull/107) by [Michael Davis](https://github.com/damaru-inc) has some +1 already. However, eyes are always welcomed! 👀

## Does Socket.IO binding an interesting feature for you?
[Socket.IO protocol support](https://github.com/asyncapi/bindings/issues/74) is looking for a champion! 🦸🏿‍♀️🦸🏽‍♂️

## `avro-schema-parser` `v1.0.1` got released!

It includes an important bugfix for the following issues:
- [Avro parser does not store sub definitions](https://github.com/asyncapi/avro-schema-parser/issues/111).
- [Missing visualization of Avro schema with reference](https://github.com/asyncapi/avro-schema-parser/issues/113).

The PR containing the bugfix can be found [here](https://github.com/asyncapi/avro-schema-parser/pull/112).

There is also a small but needed refactor that reduces cognitive complexity. The PR (merged) can be found [here](https://github.com/asyncapi/avro-schema-parser/pull/116).

I want to say thanks 🙏🏾 to [Jonathan](https://github.com/kolb0401) for all the work it did on this project.

## `converter-js` `v0.6.1` got released!

It includes an important security fix that fixes few vulnerabilities. See [fix: security vulnerabilities](https://github.com/asyncapi/converter-js/pull/78) by [https://github.com/magicmatatjahu](Maciej Urbańczyk).

## `parser-js` `v1.13.2` got released!

It includes the following bugfix: [fix: missing constructor type definition](https://github.com/asyncapi/parser-js/pull/438) by [Dominik Schwank](https://github.com/dschwank).

## More news around `parser-js`

[Ritik Rawal](https://github.com/ritik307) is championing [Throw meaningfull error when parser of specific schemaFormat is not available](https://github.com/asyncapi/parser-js/issues/157) 💪  

## Metrics

### Commits

Commits by repo:
![Commits by repo](https://user-images.githubusercontent.com/1083296/149977262-862890fa-602e-45b8-b4c1-33c9e0a4961d.png)

|# Commits                                            |# Authors|# Repositories|
|-----------------------------------------------------|---------|--------------|
|76                                                   |10       |13            |


|Repository                                           |Commits|Authors|Organizations|Added Lines|Removed Lines|Avg. LInes/Commit|Avg. Files/Commit|
|-----------------------------------------------------|-------|-------|-------------|-----------|-------------|-----------------|-----------------|
|https://github.com/asyncapi/parser-js.git            |10     |5      |1            |309        |41           |35               |2.3              |
|https://github.com/asyncapi/spec-json-schemas.git    |10     |3      |1            |10,991     |266          |1,125.7          |2.1              |
|https://github.com/asyncapi/avro-schema-parser.git   |8      |3      |1            |508        |65           |71.625           |2.5              |
|https://github.com/asyncapi/converter-js.git         |8      |2      |1            |12,087     |7,147        |2,404.25         |1.75             |
|https://github.com/asyncapi/spec.git                 |8      |5      |1            |140        |20           |20               |1.75             |
|https://github.com/asyncapi/bindings.git             |4      |1      |1            |97         |12           |27.25            |1.75             |
|https://github.com/asyncapi/converter-go.git         |4      |1      |1            |97         |12           |27.25            |1.75             |
|https://github.com/asyncapi/extensions-catalog.git   |4      |1      |1            |97         |12           |27.25            |1.75             |
|https://github.com/asyncapi/openapi-schema-parser.git|4      |1      |1            |97         |12           |27.25            |1.75             |
|https://github.com/asyncapi/parser-api.git           |4      |1      |1            |97         |12           |27.25            |1.75             |
|https://github.com/asyncapi/parser-go.git            |4      |1      |1            |97         |12           |27.25            |1.75             |
|https://github.com/asyncapi/raml-dt-schema-parser.git|4      |1      |1            |97         |12           |27.25            |1.75             |
|https://github.com/asyncapi/tck.git                  |4      |1      |1            |97         |12           |27.25            |1.75             |


### Issues

![Issues closed by repo](https://user-images.githubusercontent.com/1083296/149978030-3a03d874-3c14-4e51-bc0e-c450ad634377.png)

![Issues closed by repo](https://user-images.githubusercontent.com/1083296/149978120-c69345f0-71cc-4614-812c-65ce938a8241.png)

![Issues by status](https://user-images.githubusercontent.com/1083296/149978280-cf5fb501-a36e-4261-b164-ff129510b0c9.png)


|# Issues                                             |# Submitters|# Assignees|Median Time Open (Days)|
|-----------------------------------------------------|------------|-----------|-----------------------|
|8                                                   |7          |0          |3.495                  |

|Repository                                           |# Issues Open|# Submitters|# Assignees|# Labels|
|-----------------------------------------------------|-------------|------------|-----------|--------|
|https://github.com/asyncapi/parser-js                |3            |3           |0          |3       |
|https://github.com/asyncapi/avro-schema-parser       |2            |2           |0          |1       |
|https://github.com/asyncapi/converter-js             |1            |1           |0          |2       |
|https://github.com/asyncapi/parser-api               |1            |1           |0          |1       |
|https://github.com/asyncapi/spec-json-schemas        |1            |1           |0          |1       |


### Pull Requests

Pull Requests opened:
![Pull Requests opened](https://user-images.githubusercontent.com/1083296/149978783-2f687c7f-ae49-40b6-bab5-2cc21274ab99.png)

Pull Requests closed:
![Pull Requests closed](https://user-images.githubusercontent.com/1083296/149978846-c9ba7127-8299-42ca-bfab-3b79fe25f1e6.png)

![Pull Requests by status](https://user-images.githubusercontent.com/1083296/149978905-9a78438c-dce2-4532-b0e8-d40354d61450.png)

|# Pull Requests                                      |# Submitters|# Repositories|
|-----------------------------------------------------|------------|--------------|
|78                                                   |11           |13            |


|Repository                                           |Pull Requests|Submitters|Assignees|Avg. Days Open|
|-----------------------------------------------------|-------------|----------|---------|--------------|
|asyncapi/parser-js                                   |12           |6         |0        |1.44          |
|asyncapi/spec-json-schemas                           |10           |3         |0        |2.91          |
|asyncapi/converter-js                                |9            |2         |0        |2.21          |
|asyncapi/avro-schema-parser                          |8            |3         |0        |0.54          |
|asyncapi/spec                                        |6            |3         |0        |2.5           |
|asyncapi/bindings                                    |5            |2         |0        |0.98          |
|asyncapi/converter-go                                |4            |1         |0        |0.0199        |
|asyncapi/extensions-catalog                          |4            |1         |0        |0.017         |
|asyncapi/openapi-schema-parser                       |4            |1         |0        |0.022         |
|asyncapi/parser-api                                  |4            |1         |0        |0.0199        |
|asyncapi/parser-go                                   |4            |1         |0        |0.0199        |
|asyncapi/raml-dt-schema-parser                       |4            |1         |0        |0.022         |
|asyncapi/tck                                         |4            |1         |0        |0.0199        |