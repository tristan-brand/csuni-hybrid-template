# CS Uni Hybrid .NET Template  
### (WSL + VS Code + Makefile + Tests + Solution)

A professional .NET 8 (LTS) template for university C# assignments.

This template:

- Matches common **Visual Studio solution requirements** (.sln at root)
- Uses an **industry-friendly `src/` + `tests/` layout**
- Includes xUnit test project wired to the app
- Includes a Makefile with clean `make <ProjectName>` usage
- Works perfectly with `code .` from WSL
- Requires no Visual Studio ("purple") IDE

---

# 🔧 Prerequisites

You must have:

- WSL (Ubuntu recommended)
- .NET SDK 8 installed inside WSL
- VS Code with:
  - Remote - WSL extension
  - C# Dev Kit

Check .NET inside WSL:

```bash
dotnet --version
```

# Installation
```bash
git clone https://github.com/<your-username>/csuni-hybrid-template.git
cd csuni-hybrid-template
./install.sh
```
Verify installation:
```bash
dotnet new list | grep csuni
```
Expected output:
```bash
CS Uni Hybrid (sln + src/tests + make)
Short Name: csuni
```

# 🚀 Usage: Creating a New Assignment
From your assignments directory:
```bash
cd ~/prog
dotnet new csuni -n Assignment1
cd Assignment1
code .
```
This creates:
```arduino
Assignment1/
  Assignment1.sln
  Makefile
  .vscode/
  src/
    Assignment1/
      Assignment1.csproj
      Program.cs
      App.config
      Properties/
        AssemblyInfo.cs
  tests/
    Assignment1.Tests/
      Assignment1.Tests.csproj
      ExampleTests.cs
```

# 🏗 Build, Run, Test
## Build solution
```bash
make build
```
Equivalent to:
```bash
dotnet build
```
## Run tests
```bash
make test
```
Equivalent to:
```bash
dotnet test
```
## Run the app
```bash
make Assignment1
```
Where Assignment1 matches the project name.
Internally this runs:
```bash
dotnet run --project src/Assignment1/Assignment1.csproj
```


