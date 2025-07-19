# Formal Verification of Computer Programs

<img src="./img/dafny-logo.jpg" width="200">

This project explores the use of formal verification
methods using the [Dafny programming language](https://dafny.org/) and
the creation of formally verified programs -- from
simple examples to complex algorithms.

This repo contains numerous programs and examples
and also exercises to reinforce one's understanding of
Dafny and verified programming.

## Installation and Usage

- Install the .NET SDK (required for Dafny tool)
- Install the [VS Code extension for Dafny](https://marketplace.visualstudio.com/items?itemName=dafny-lang.ide-vscode) (recommended)
- Open a Dafny file (with .dfy extension) and you will be prompted to install latest version of Dafny. Click Accept.
- The Dafny VS Code integration will allow you to see the results of verification while you are writing it.
- If you want to compile, use the Dafny: Build and Run commands.

Most of the time, you won't be required to compile the code.
You only need to see the verification results.

## Notes

1. [Weakest preconditions and strongest postconditions](./notes/wp_and_sp.md)

## References and Tutorials

- [Getting started with Dafny: A Guide](https://dafny.org/latest/OnlineTutorial/guide)
- [A Tutorial on Dafny to Construct Verified Software](https://arxiv.org/pdf/1701.04481)
- Recommended textbook: [Program Proofs](https://mitpress.mit.edu/9780262546232/program-proofs/)