---
title: "AsyncAPI Spec and parsers update (12 Feb - 28 Feb 2022)"
date: 2022-02-28T00:00:00+01:00
tags: ["asyncapi"]
draft: false
---

This is another entry on my bi-weekly update (yes, this time the range is a little more extensive) about the AsyncAPI Spec and parsers.

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

### "What it could mean to support multiple applications" live discussion 

This is one of the "hot topics" around the `v3.0.0` of AsyncAPI Spec. For this reason, on the 28th of February, [Jonas Lagoni](https://github.com/jonaslagoni) hosted a live discussion about this topic. It was a great way to get feedback from the community about the following issue: [Defining a collection of applications](https://github.com/asyncapi/spec/issues/658).
The video recording is available [here](https://youtu.be/Vl8Nn3GOJiE).

Your **feedback is needed** to keep iterating on this idea, so I encourage you to write yours and share it on the [the issue](https://github.com/asyncapi/spec/issues/658).

### Solving publish/subscribe confusion on spec 3.0 requires noticeable changes

People shared more thoughts and feedback in the [Proposal to solve publish/subscribe confusion](https://github.com/asyncapi/spec/issues/618#issuecomment-1036490698). Some users raised a few concerns around Developer Experience, particularly in the fact that **messages** would be declared inside the **channels**and how **operations** refer to them.
Worth reading the thread. This topic was discussed in the [Spec 3.0 Meeting (link to the right minute)](https://youtu.be/F9ovYPoMnzQ?t=1085) as well.

Please join [the thread](https://github.com/asyncapi/spec/issues/618#issuecomment-1036490698) and share your thoughts! 👀

### Spec 3.0 meeting

- 16th of February 2022: 
  - [Agenda](https://github.com/asyncapi/community/issues/254)
  - [Video recording](https://youtu.be/F9ovYPoMnzQ?t=879)
- Next one is on the 2nd of February 2022, 16 UTC: 
  - [Agenda](https://github.com/asyncapi/community/issues/270)

### Documentation for the release process is being improved!

[Dale Lane](https://github.com/dalelane) is working hard to document the current spec release process properly. As Dale was the last release coordinator, he had all the new and fresh knowledge to do such a task.
The *Draft* PR can be found [here](https://github.com/asyncapi/spec/pull/722). Please consider reviewing it (even though it's in Draft state) and giving feedback! 👀

### Server variable objects will be reusable in v2.4.0!

Thanks to [Daniel Kocot](https://github.com/danielkocot) who pushed for [feat: added server variable object as reusable object](https://github.com/asyncapi/spec/pull/717), server variable object will be reusable in v2.4.0.
All PRs are now reviewed and accepted but blocked until we start the v2.4.0 release process:

- [spec](https://github.com/asyncapi/spec/pull/717)
- [spec-json-schemas](https://github.com/asyncapi/spec-json-schemas/pull/174)
- [parser-js](https://github.com/asyncapi/parser-js/pull/476)

### We've got a new Code Owner for the Spec!

I usually don't mention new additions to the Code Owners list on repositories, but I believe this **should be** an exception; It is not common at all to have a new Code Owner on the Spec :)
If you wonder who became a new Code Owner of the Spec, I won't let you wait for that long: 

[Dale Lane](https://github.com/dalelane) is the new Code Owner 🎉🚀! And the reason for that is very well explained [here](https://github.com/asyncapi/spec/issues/720), thanks to [Lukasz Gornicki](https://github.com/derberg).

As a side note, Dale is also now, consequently, Code Owner of the [spec-json-schemas](https://github.com/asyncapi/spec-json-schemas) repository.

## Bindings

### Shall we move binding JSON Schema files to main JSON Schema repository?

[Move binding JSON schema files to main JSON schema repository](https://github.com/asyncapi/bindings/issues/113) got revived, and a discussion around where the JSON Schema files for bindings should be located was started. Please join! 👀

## `parser-js` 

### Integrating Spectral (by Stoplight) in parser-js 

[Spectral](https://github.com/stoplightio/spectral) is a JSON/YAML linter (Not a JSON Schema linter/validator). The point is that it provides a mechanism for writing and running custom validation rules (one of those can be running AJV for validating against JSON Schema).
This is important because it could simplify most of the job we do nowadays in the `parser-js`, which validates against JSON Schema, and also runs custom validations, which could be ported to Spectral.

[Maciej Urbańczyk](https://github.com/magicmatatjahu) started playing around with this to validate the idea ASAP. If we can validate it, it would mean that our current parser-js parse logic will be drastically simplified, becoming almost just a wrapper of Spectral, with our custom rules. He also created the following PR on Spectral repository: [feat(rulesets): support 2.1.0, 2.2.0, 2.3.0 AsyncAPI versions](https://github.com/stoplightio/spectral/pull/2067). It has already been merged 🚀!

Here is the issue [Integrate stoplight/spectral in parser](https://github.com/asyncapi/parser-js/issues/477) where you can track the progress, also join the efforts! 🙌

### Intent-Driven API slowly progressing

More work has been done regarding the Intent-Driven API planned for the next version of the `parser-js` (and for all future parser implementations). [Sergio Moya](https://github.com/smoya) has been implementing some suggestions and improvements to the following mock: [feat: initial intent API implementation](https://github.com/asyncapi/parser-js/pull/453). Even though this PR won't be probably be ever merged, this is intended to help us, from the more practical point of view, define the API that we want to use across all parsers (See [Parser-API](https://github.com/asyncapi/parser-api)).

This would be included in the next major version of the `parser-js`, especially for giving support (retroactively) for the `v3.0.0` spec release.

### `parser-js` also had some more activity

- 🐛 Bug reported by [Semen](https://github.com/Tenischev): [Inconsistent behavior of message/messages/hasMultipleMessages](https://github.com/asyncapi/parser-js/issues/475)
- 👀 [Ritik](https://github.com/ritik307)'s PR: [fix: throw meaningful errors](https://github.com/asyncapi/parser-js/pull/449) is waiting for another review!
- 👑 [Nektarios](https://github.com/NektariosFifes) is championing the bug [References are bundled before validated](https://github.com/asyncapi/parser-js/issues/405)

## `converter-js`

### New four versions got released! 🎉

[Maciej Urbańczyk](https://github.com/magicmatatjahu) has been working hard on the `converter-js` repository and has just released the following versions:
- `v0.7.1` contains a bug fix regarding an inconsistent behavior when converting from JSON. Here is the PR with the change: [fix: handle JSON](https://github.com/asyncapi/converter-js/pull/96)
- `v0.7.2` contains a bug fix regarding an error with a wrong cleanup of the field `name` from parameters located in components. Here is the PR with the change: [fix: remove name field from parameter shape (from 2.0.0-rc2 version)](https://github.com/asyncapi/converter-js/pull/101)
- `v0.8.0` changes the way the errors are handled. Now, they are being thrown instead of being just logged. Here is the PR with the change: [feat: throw errors, do not log them](https://github.com/asyncapi/converter-js/pull/99)
- `v0.9.0` adds a new `-o` flag that allows saving the output into a file by passing a path to it. Here is the PR with the change: [feat: add output flag](https://github.com/asyncapi/converter-js/pull/100) 