---
title: "AsyncAPI Spec and parsers update (30 Nov - 31 Dec 2021)"
date: 2021-12-31T00:00:00+01:00
tags: ["asyncapi"]
draft: false
---

I plan to write periodic updates about the AsyncAPI Spec and parsers every ~2 weeks (I hope you are ok with it).

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

This time, as an exception (it is the first one I do), I wanted to include updates from the **whole month** (30 Nov - 31 Dec 2021).

Feel free to ask me to include any other repository if you consider it makes sense. Also, in case you want to help me with these updates :)

## Spec

### Spec v2.3.0 work is progressing!

- [Dale Lane](https://github.com/dalelane) and [Lukasz Gornicki](https://github.com/derberg) are leading this release. The overall progress is tracked [here](https://github.com/asyncapi/spec/issues/675). They created the following PRs that represent the scaffolding of the release branches:
  - https://github.com/asyncapi/website/pull/512
  - https://github.com/asyncapi/spec/pull/681
  - https://github.com/asyncapi/spec-json-schemas/pull/142
- [Sergio Moya](https://github.com/smoya) is championing [Allow servers and channels to be defined inside components](https://github.com/asyncapi/spec/issues/660). The RFC is in `Stage 2 Draft` (even though it mentions `Stage 0 Strawman`), and most probably going to advance its stage  to `Stage 3 Accepted` and be included in `2.3.0` release. For this reason, PR's are opened and targeting `2022-01-release` branch:
  - https://github.com/asyncapi/spec/pull/665
  - https://github.com/asyncapi/spec-json-schemas/pull/133
  - https://github.com/asyncapi/parser-js/pull/430
- [Michael Davis](https://github.com/damaru-inc) is championing [Add Solace bindings to the list of supported bindings in the spec](https://github.com/asyncapi/spec/pull/666). The RFC is in `Stage 2 Draft` and will probably advance its stage to `Stage 3 Accepted` and be included in the `2.3.0` release, especially considering that the [PR that had Solace binding](https://github.com/asyncapi/bindings/pull/85) got merged almost two months ago. The following PR got opened and targeting `2022-01-release` branch:
  - https://github.com/asyncapi/spec-json-schemas/pull/143 
  Once the previous is merged, ci scripts will generate a new release of [@asyncapi/specs](https://github.com/asyncapi/spec-json-schemas) package. Then there will be one more PR coming on [parser-js](https://github.com/asyncapi/parser-js) which will update that package to point to that new version.

### Spec v3.0.0 work is slowly progressing!

As always, You can find some of the most critical progress on the [AsyncAPI spec v3.0.0 release journal ](https://github.com/asyncapi/community/issues/163#issuecomment-964141466)

- The [Proposal to solve publish/subscribe confusion](https://github.com/asyncapi/spec/issues/618#issuecomment-980093487) RFC is slowly being moved forward. [Sergio Moya](https://github.com/smoya) has taken the initiative to split this issue into smaller ones so they can be treated as independent RFCs. An example is the one already mentioned in the previous section: [Allow servers and channels to be defined inside components](https://github.com/asyncapi/spec/issues/660). Some issues have been created so anyone else can also pick them anc champion them:
  - [Make channels field optional within an AsyncAPI file](https://github.com/asyncapi/spec/issues/661).
  - [Let channels be identified by an ID rather than their address](https://github.com/asyncapi/spec/issues/663).
  However, we need more thoughts on how to handle the `kind` property. Shall we drop that idea? Help is needed [here](https://github.com/asyncapi/spec/issues/618#issuecomment-980109302).
- The Pros/Cons of implementing an Intent-driven API (as described in [Parser-API](https://github.com/asyncapi/parser-api)) for the future [Parser-JS]() version (the one that will adopt spec `v3.0.0` changes) has been annotated in https://github.com/asyncapi/parser-js/issues/401. And your feedback is needed!
- Also, regarding the [Parser-API]() repo, some new important issues have been opened by [Jonas Lagoni](https://github.com/jonaslagoni):
  - [Clarify the intention of server URL](https://github.com/asyncapi/parser-api/issues/37).
  - [Clearly define how traits should be applied](https://github.com/asyncapi/parser-api/issues/36).
  - [Define how to handle unknown schema and message id's](https://github.com/asyncapi/parser-api/issues/34).
  - [Define how `hasX` need to be interpreted](https://github.com/asyncapi/parser-api/issues/31).
  - [Define how to handle derferencing](https://github.com/asyncapi/parser-api/issues/30).
  - [Define how to handle schemaFormats](https://github.com/asyncapi/parser-api/issues/29).

You can find a list (grooming pending) of candidates to be included in `v3.0.0` at https://github.com/asyncapi/spec/milestone/18. 

### Spec also had some more activity

- [Jonas Lagoni](https://github.com/jonaslagoni) baked a new example of spec use-case to be used as AsyncAPI doc reference from now on. [Here](https://github.com/asyncapi/spec/pull/651) the PR, which is already merged.
- [Khuda Dad](https://github.com/KhudaDad414) fixed the `streetlights-kafka.yml` example with [change clientId type on kafka operation to schema](https://github.com/asyncapi/spec/pull/648).
- [Lukasz Gornicki](https://github.com/derberg) also worked on `streetlights-kafka.yml` example with [extend example for kafka with x509 security](https://github.com/asyncapi/spec/pull/670), which is already reviewed and waiting for a last review and approval from the code owner [Fran Méndez](https://github.com/fmvilas).
- The list of contributors shown in the [spec](https://github.com/asyncapi/spec) repository is now showing only spec contributors thanks to [this PR](https://github.com/asyncapi/spec/pull/671) by [Lukasz Gornicki](https://github.com/derberg)
- The work on [redefine the trait inheritance behavior](https://github.com/asyncapi/spec/pull/532) has been retaken by [Simon Heimler](https://github.com/Fannon).
- [Should we have freeze period on release process?](https://github.com/asyncapi/spec/issues/667). [Maciej Urbańczyk](https://github.com/magicmatatjahu) is opening that debate and looking for more opinions on it.
- [add security at the operation level](https://github.com/asyncapi/spec/pull/584) by [sekharbans](https://github.com/sekharbans-ebay) is moving most probably to RFC `Stage 2 Draft`.
- [docs(spec): fix the type and docs of Operation.message field](https://github.com/asyncapi/spec/pull/603) by [Vladimir Gorej](https://github.com/char0n) is waiting for the last review so it can be merged.
- [Add Support for `messageID`](https://github.com/asyncapi/spec/issues/458) did a baby step. 
  - [Sergio Moya](https://github.com/smoya) has opened a few issues to guide people on the work that has to be done in [](https://github.com/asyncapi/spec/issues/458):
    - https://github.com/asyncapi/spec-json-schemas/issues/131
    - https://github.com/asyncapi/parser-js/issues/414  
  
  **We need a champion** for this feature, so please consider passing by and dropping questions. I ([Sergio Moya](https://github.com/smoya)) am more than happy to help you :) 


## `spec-json-schemas` had some important activity
- To [ease maintainability](https://github.com/asyncapi/spec-json-schemas/issues/127) of AsyncAPI JSON Schemas, [Jonas Lagoni](https://github.com/jonaslagoni) has been doing a rework on them, mainly splitting all definitions into different files they can be bundled later to provide a unique file to use.
The PR is available [here](https://github.com/asyncapi/spec-json-schemas/pull/128), and it has been going through several iterations. Some people have already reviewed it. As always, eyes are welcome and needed, so I encourage you to go and take a look!
- On the other hand, [Lukasz Gornicki](https://github.com/derverg) opened the issue [remove js and go package and probably move JSON schemas should stay alone in the repo](https://github.com/asyncapi/spec-json-schemas/issues/130).
The TL;DR is that it has been proposed to create separate repositories for each different language implementation (Node and Go at this time) of that package instead of using monorepo. All those repositories will have an up-to-date copy of the JSON Schema definitions (via GH Actions). Work would start after `v2.3.0` release. A discussion about it can be found on the issue.

## `parser-js` `v1.13.1` is out + some important issues and updates!
- Two versions got released!
  - `v1.13.0`:
    - [feat: add stringify function](https://github.com/asyncapi/parser-js/issues/402) by [Maciej Urbańczyk](https://github.com/magicmatatjahu). More info why need that can be found [here](https://github.com/asyncapi/parser-js/issues/266).
  - `v1.13.1`:
    - [fix: type of json() method](https://github.com/asyncapi/parser-js/pull/431) by [Fran Méndez](https://github.com/fmvilas).
- [Dimitrios Dedoussis](https://github.com/dedoussis) discovered that there are [Misleading validation errors for Security Scheme Objects](https://github.com/asyncapi/parser-js/issues/428). It needs further investigation so help is wanted!
- Work on [Improve error handling in parser](https://github.com/asyncapi/parser-js/issues/119) by [Maciej Urbańczyk](https://github.com/magicmatatjahu) has been retaken after few questions and suggestions dropped by [David](https://github.com/BOLT04).

## `avro-schema-parser` got a PR to fix a bug
[fix: avro parser now handles record reuse in definitions](https://github.com/asyncapi/avro-schema-parser/pull/112) by [Jonathan](https://github.com/kolb0401) is **waiting for your review**!

## Metrics
### Commits

Commits by repo:
![Commits by repo](https://user-images.githubusercontent.com/1083296/147778327-6108409f-3e4b-4b9a-b2ab-757a6ebf3a20.png)

|# Commits                                            |# Authors|# Repositories|
|-----------------------------------------------------|---------|--------------|
|26                                                   |8        |10            |


|Repository                                           |Commits|Authors|Added Lines|Removed Lines|Avg. LInes/Commit|Avg. Files/Commit|
|-----------------------------------------------------|-------|-------|-----------|-------------|-----------------|-----------------|
|https://github.com/asyncapi/spec.git                 |10     |6      |335        |120          |45.5             |3.5              |
|https://github.com/asyncapi/parser-js.git            |6      |4      |276        |18           |49               |1.833            |
|https://github.com/asyncapi/spec-json-schemas.git    |3      |2      |1,496      |1            |499              |1.333            |
|https://github.com/asyncapi/converter-go.git         |1      |1      |3          |6            |9                |1                |
|https://github.com/asyncapi/converter-js.git         |1      |1      |8          |0            |8                |1                |
|https://github.com/asyncapi/extensions-catalog.git   |1      |1      |8          |0            |8                |1                |
|https://github.com/asyncapi/openapi-schema-parser.git|1      |1      |8          |0            |8                |1                |
|https://github.com/asyncapi/parser-go.git            |1      |1      |8          |0            |8                |1                |
|https://github.com/asyncapi/raml-dt-schema-parser.git|1      |1      |9          |0            |9                |1                |
|https://github.com/asyncapi/tck.git                  |1      |1      |8          |0            |8                |1                |

### Issues

![Issues closed by repo](https://user-images.githubusercontent.com/1083296/147778704-9b8b2ef9-092f-4e24-a11b-fd3c8ced9b1c.png)

![Issues closed by repo](https://user-images.githubusercontent.com/1083296/147778071-8df3a3ea-7df7-43b8-a5d0-b7f5bc4f6765.png)

![Issues by status](https://user-images.githubusercontent.com/1083296/147778101-b4ea81c8-0c5c-4e39-91ce-b10d71866bb0.png)


|# Issues                                             |# Submitters|# Assignees|Median Time Open (Days)|
|-----------------------------------------------------|------------|-----------|-----------------------|
|18                                                   |11          |0          |16.04                  |

|Repository                                           |# Issues Open|# Submitters|
|-----------------------------------------------------|-------------|------------|
|https://github.com/asyncapi/parser-api               |6            |1           |
|https://github.com/asyncapi/spec                     |4            |4           |
|https://github.com/asyncapi/avro-schema-parser       |3            |3           |
|https://github.com/asyncapi/parser-js                |3            |3           |
|https://github.com/asyncapi/raml-dt-schema-parser    |1            |1           |
|https://github.com/asyncapi/spec-json-schemas        |1            |1           |

#### Issues Backlog

|Summary                                              |URL|Open Date|Days Open|
|-----------------------------------------------------|---|---------|---------|
|Let channels be identified by an ID rather than their address.|https://github.com/asyncapi/spec/issues/663|Dec 1, 2021 @ 12:39:41.000|29.04    |
|Support of allOf, oneOf or anyOf at payload level    |https://github.com/asyncapi/avro-schema-parser/issues/106|Dec 1, 2021 @ 17:16:54.000|28.77    |
|Define how `hasX` need to be interpreted             |https://github.com/asyncapi/parser-api/issues/31|Dec 6, 2021 @ 15:58:21.000|23.86    |
|Define how to handle derferencing                    |https://github.com/asyncapi/parser-api/issues/30|Dec 6, 2021 @ 15:51:33.000|23.86    |
|Define how to handle schemaFormats                   |https://github.com/asyncapi/parser-api/issues/29|Dec 6, 2021 @ 15:49:57.000|23.86    |
|Should we have freeze period on release process?     |https://github.com/asyncapi/spec/issues/667|Dec 7, 2021 @ 13:57:33.000|22.98    |
|Maybe make `stringify` function available on the instance of AsyncAPIDocument class|https://github.com/asyncapi/parser-js/issues/421|Dec 9, 2021 @ 15:25:01.000|20.88    |
|Clarification on URL and it's resolution rules       |https://github.com/asyncapi/spec/issues/674|Dec 14, 2021 @ 10:05:37.000|16.14    |
|Define how to handle unknown schema and message id's |https://github.com/asyncapi/parser-api/issues/34|Dec 14, 2021 @ 09:28:38.000|16.13    |
|Work on 2.3 release                                  |https://github.com/asyncapi/spec/issues/675|Dec 14, 2021 @ 14:48:17.000|15.95    |
|[New Doc 📑]: specify which version of npm is required to run `npm install`.|https://github.com/asyncapi/parser-js/issues/427|Dec 15, 2021 @ 14:20:04.000|14.93    |
|Misleading validation errors for Security Scheme Objects|https://github.com/asyncapi/parser-js/issues/428|Dec 15, 2021 @ 21:47:49.000|14.62    |
|Clearly define how traits should be applied          |https://github.com/asyncapi/parser-api/issues/36|Dec 17, 2021 @ 15:31:28.000|12.88    |
|Clarify the intention of server URL                  |https://github.com/asyncapi/parser-api/issues/37|Dec 17, 2021 @ 15:40:26.000|12.87    |
|Missing visualization of Avro schema with reference  |https://github.com/asyncapi/avro-schema-parser/issues/113|Dec 22, 2021 @ 23:06:35.000|7.53     |
|Avro parser does not store sub definitions           |https://github.com/asyncapi/avro-schema-parser/issues/111|Dec 23, 2021 @ 22:56:07.000|6.53     |


### Pull Requests

Pull Requests opened:
![Pull Requests opened](https://user-images.githubusercontent.com/1083296/147778574-17d246f7-cc56-4871-81e9-efa7bede4827.png)

Pull Requests closed:
![Pull Requests closed](https://user-images.githubusercontent.com/1083296/147778330-0b6ef19c-5d91-40f4-b4e8-11fbe4278a3c.png)

![Pull Requests by status](https://user-images.githubusercontent.com/1083296/147778819-e25f6a03-1e54-4882-b8d7-1686fe257461.png)

|# Pull Requests                                      |# Submitters|# Repositories|
|-----------------------------------------------------|------------|--------------|
|32                                                   |9           |11            |


|Repository                                           |Pull Requests|Submitters|Avg. Days Open|
|-----------------------------------------------------|-------------|----------|--------------|
|asyncapi/spec                                        |10           |5         |8.956         |
|asyncapi/parser-js                                   |8            |6         |7.356         |
|asyncapi/spec-json-schemas                           |6            |4         |11.453        |
|asyncapi/avro-schema-parser                          |1            |1         |5.78          |
|asyncapi/converter-go                                |1            |1         |0.02          |
|asyncapi/converter-js                                |1            |1         |0.27          |
|asyncapi/extensions-catalog                          |1            |1         |0.01          |
|asyncapi/openapi-schema-parser                       |1            |1         |0.01          |
|asyncapi/parser-go                                   |1            |1         |0.06          |
|asyncapi/raml-dt-schema-parser                       |1            |1         |11.78         |
|asyncapi/tck                                         |1            |1         |8.96          |

#### Pull Requests Backlog

|Summary                                              |URL|Open Date|Days Open|
|-----------------------------------------------------|---|---------|---------|
|feat: allow servers and channels to be defined as components|https://github.com/asyncapi/spec/pull/665|Dec 2, 2021 @ 16:56:51.000|27.86    |
|feat: allow servers and channels to be defined as components|https://github.com/asyncapi/spec-json-schemas/pull/133|Dec 2, 2021 @ 16:06:01.000|27.85    |
|feat: add Solace bindings to the list of supported bindings in the spec.|https://github.com/asyncapi/spec/pull/666|Dec 6, 2021 @ 17:36:34.000|23.83    |
|docs: extend example for kafka with x509 security    |https://github.com/asyncapi/spec/pull/670|Dec 8, 2021 @ 11:48:58.000|22.07    |
|fix: upgrade @asyncapi/specs                         |https://github.com/asyncapi/parser-js/pull/423|Dec 9, 2021 @ 16:37:56.000|20.83    |
|feat: allow servers and channels to be fetched from components|https://github.com/asyncapi/parser-js/pull/430|Dec 16, 2021 @ 17:58:39.000|13.78    |
|fix: avro parser now handles record reuse in definitions|https://github.com/asyncapi/avro-schema-parser/pull/112|Dec 24, 2021 @ 17:59:27.000|5.78     |
|feat: release version 2.3.0                          |https://github.com/asyncapi/spec/pull/681|Dec 27, 2021 @ 11:12:35.000|3.1      |
|feat: release for version 2.3.0 of the spec          |https://github.com/asyncapi/spec-json-schemas/pull/142|Dec 27, 2021 @ 11:14:07.000|3.06     |
|feat: release for version 2.3.0 of the spec          |https://github.com/asyncapi/parser-js/pull/433|Dec 27, 2021 @ 12:04:32.000|3.02     |
|feat: add Solace to the list of bindings.            |https://github.com/asyncapi/spec-json-schemas/pull/143|Dec 28, 2021 @ 19:07:06.000|1.73     |