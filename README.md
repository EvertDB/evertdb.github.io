# C# minor

A browser-based C# code editor for educational use built with Blazor WebAssembly and the Microsoft Roslyn compiler. This project provides a complete C# development environment that runs entirely in the browser, perfect for teaching and learning C# programming.

## 🎯 Live Demo

Try it online: [https://microsoftlearning.github.io/c-sharp-minor/](https://microsoftlearning.github.io/c-sharp-minor/)

## ✨ Features

- **Real C# Compilation**: Uses Microsoft Roslyn compiler for authentic C# compilation
- **WebAssembly Execution**: Runs compiled C# code directly in the browser using .NET WebAssembly
- **Educational Design**: Clean, intuitive interface designed specifically for learning
- **Progressive Complexity**: Toggle between simplified and full code views
- **Sample Code**: Built-in examples to help students get started
- **Clean Output**: Optional system message filtering for distraction-free learning
- **No External Dependencies**: Self-contained solution that doesn't rely on external services

## 🚀 Quick Start

### Prerequisites
- .NET 9.0 SDK
- Any modern web browser

### Running the Application

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd c-flat
   ```

2. **Navigate to the project directory**
   ```bash
   cd CSharpCompilerWasm
   ```

3. **Run the application**
   ```bash
   dotnet run
   ```

4. **Open your browser**
   - Navigate to `http://localhost:5000` (or the URL shown in the terminal)
   - Click on "Compiler" in the navigation menu
   - Start writing and compiling C# code!

## 🏗️ Architecture

### Technology Stack
- **Frontend**: Blazor WebAssembly (.NET 9)
- **Compiler**: Microsoft.CodeAnalysis.CSharp (Roslyn) 4.14.0
- **Editor**: Monaco Editor with C# language support
- **References**: Basic.Reference.Assemblies.Net90 for WebAssembly compatibility

### How It Works
1. **Code Editing**: Monaco Editor provides professional C# editing experience
2. **Compilation**: Roslyn compiler processes C# source code into .NET assemblies
3. **Reference Loading**: Assembly references are loaded for WebAssembly environment
4. **Execution**: Compiled assemblies are executed within the WebAssembly runtime
5. **Output Capture**: Console output is captured and displayed in the browser

## 📚 Educational Use

This environment is ideal for:
- **C# Programming Courses**: Students can write and test C# code immediately
- **Code Demonstrations**: Instructors can show live coding examples
- **Interactive Learning**: Real-time feedback on C# syntax and behavior
- **No Setup Required**: Students don't need to install development environments

### Example Use Cases
- Teaching basic C# syntax (variables, loops, conditionals)
- Demonstrating object-oriented programming concepts
- Showing algorithm implementations
- Testing small code snippets and examples

## 🔧 Development

### Project Structure
```
CSharpCompilerWasm/
├── Pages/
│   ├── Compiler.razor          # Main compiler component
│   ├── Home.razor             # Home page
│   └── Counter.razor          # Example counter page
├── Layout/                    # Blazor layout components
├── wwwroot/                   # Static web assets
├── Program.cs                 # Application entry point
└── CSharpCompilerWasm.csproj  # Project file
```

### Key Components

**Compiler.razor**: The main component that handles:
- Code editing with Monaco Editor
- C# compilation using Roslyn
- Assembly reference management
- Code execution and output capture

### Building for Production
```bash
dotnet publish -c Release -o published
```

## 🐛 Troubleshooting

### Common Issues

**WebAssembly Reference Loading**: The application automatically handles assembly reference loading in the WebAssembly environment. If compilation errors occur, check the browser console for detailed debugging information.

**Port Conflicts**: If the default port is in use, specify a different port:
```bash
dotnet run --urls "http://localhost:5001"
```

## 🤝 Contributing

This project demonstrates real C# compilation in WebAssembly. Contributions for improvements, educational features, or bug fixes are welcome.

## 📝 License

This project is provided as an educational example for creating browser-based C# development environments.

---

**Built with ❤️ using Blazor WebAssembly and Microsoft Roslyn**