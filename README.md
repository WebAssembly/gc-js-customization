![Build Status](https://github.com/WebAssembly/gc-js-customization/actions/workflows/main.yml/badge.svg)

# JS Customization for WebAssembly GC Objects

This repository is a clone of
[github.com/WebAssembly/gc/](https://github.com/WebAssembly/gc/). It is meant
for discussion, prototype specification and implementation of a proposal to add
a JS API to increase the ergonomics of accessing WebAssembly GC objects by
attaching custom accessors and prototypes to them.

* See the [overview](proposals/gc-js-customization/Overview.md) for a summary and rationale of the proposal.

<!--
* See the [modified spec](https://webassembly.github.io/gc/core) for details.
-->

This repository is based on the [function references proposal](proposals/function-references/Overview.md) as a baseline and includes all respective changes.

Original `README` from upstream repository follows...

# spec

This repository holds a prototypical reference implementation for WebAssembly,
which is currently serving as the official specification. Eventually, we expect
to produce a specification either written in human-readable prose or in a formal
specification language.

It also holds the WebAssembly testsuite, which tests numerous aspects of
conformance to the spec.

View the work-in-progress spec at [webassembly.github.io/spec](https://webassembly.github.io/spec/).

At this time, the contents of this repository are under development and known
to be "incomplet and inkorrect".

Participation is welcome. Discussions about new features, significant semantic
changes, or any specification change likely to generate substantial discussion
should take place in
[the WebAssembly design repository](https://github.com/WebAssembly/design)
first, so that this spec repository can remain focused. And please follow the
[guidelines for contributing](Contributing.md).

# citing

For citing WebAssembly in LaTeX, use [this bibtex file](wasm-specs.bib).
