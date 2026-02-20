# CS Uni Hybrid .NET Template (WSL + VS Code)

A .NET 8 (LTS) template for university C# assignments that matches the typical Visual Studio solution layout **but uses an industry-friendly `src/` + `tests/` structure**.

Includes:
- Root `.sln` (course requirement)
- `src/<ProjectName>/` app project
- `tests/<ProjectName>.Tests/` xUnit tests project (with project reference)
- Makefile with `make <ProjectName>` run style
- VS Code tasks (build/test/run) that work with `code .` from WSL

## Prerequisites

- WSL (Ubuntu recommended)
- .NET SDK 8 installed in WSL:
  ```bash
  dotnet --version
