.DEFAULT_GOAL := help

build:
	dotnet build

test:
	dotnet test

clean:
	dotnet clean

# Run a project by name (expects src/<name>/<name>.csproj)
%:
	@echo "▶ Running project: $@"
	dotnet build
	dotnet run --project src/$@/$@.csproj

help:
	@echo "Usage:"
	@echo "  make build      Build solution"
	@echo "  make test       Run tests"
	@echo "  make clean      Clean"
	@echo "  make <Project>  Build + run src/<Project>/<Project>.csproj"
