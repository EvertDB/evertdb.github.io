# C# minor

A browser-based C# code editor for educational use built with Blazor WebAssembly and the Microsoft Roslyn compiler. This project provides a minimal C# development environment that runs entirely in the browser, and is designed for teaching and learning simple C# programming syntax. Specifically, it was built to support the [Get started with C# Programming](https://learn.microsoft.com/training/paths/get-started-c-sharp-part-1){:target="_blank"} learning path on Microsoft Learn.

Try it online: [https://microsoftlearning.github.io/c-sharp-minor/](https://microsoftlearning.github.io/c-sharp-minor/){:target="_blank"}

## ✨ Features

- **Real C# Compilation**: Uses Microsoft Roslyn compiler for authentic C# compilation
- **WebAssembly Execution**: Runs compiled C# code directly in the browser using .NET WebAssembly
- **Educational Design**: Clean, intuitive interface designed specifically for learning
- **Progressive Complexity**: Toggle between simplified and full code views
- **Sample Code**: Built-in examples to help students get started
- **Clean Output**: Optional system message filtering for distraction-free learning
- **No External Dependencies**: Self-contained solution that doesn't rely on external services

## 🏗️ Architecture

### Technology Stack
- **Frontend**: Blazor WebAssembly (.NET 9)
- **Compiler**: Microsoft.CodeAnalysis.CSharp (Roslyn) 4.14.0
- **Editor**: Monaco Editor with C# language support
- **References**: Basic.Reference.Assemblies.Net90 for WebAssembly compatibility

**Built with ❤️ using Blazor WebAssembly and Microsoft Roslyn**
