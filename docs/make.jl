using JuliaExampleRepo
using Documenter

DocMeta.setdocmeta!(JuliaExampleRepo, :DocTestSetup, :(using JuliaExampleRepo); recursive=true)

makedocs(;
    modules=[JuliaExampleRepo],
    authors="Gilles Bareilles <gilles.bareilles@protonmail.com> and contributors",
    repo="https://github.com/GillesBareilles/JuliaExampleRepo.jl/blob/{commit}{path}#{line}",
    sitename="JuliaExampleRepo.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://GillesBareilles.github.io/JuliaExampleRepo.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/GillesBareilles/JuliaExampleRepo.jl",
    devbranch="main",
)
