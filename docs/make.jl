using MySecondPackage
using Documenter

DocMeta.setdocmeta!(MySecondPackage, :DocTestSetup, :(using MySecondPackage); recursive=true)

makedocs(;
    modules=[MySecondPackage],
    authors="Promia Chowdhury <promia@mit.edu> and contributors",
    repo="https://github.com/pc0808/MySecondPackage.jl/blob/{commit}{path}#{line}",
    sitename="MySecondPackage.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://pc0808.github.io/MySecondPackage.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/pc0808/MySecondPackage.jl",
    devbranch="main",
)
