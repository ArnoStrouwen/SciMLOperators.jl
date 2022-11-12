using Documenter, SciMLOperators

cp("./docs/Manifest.toml", "./docs/src/assets/Manifest.toml", force = true)
cp("./docs/Project.toml", "./docs/src/assets/Project.toml", force = true)

include("pages.jl")

makedocs(
    sitename="SciMLOperators.jl",
    authors="Chris Rackauckas, Alex Jones, Vedant Puri",
    modules=[SciMLOperators],
    clean=true,doctest=false,
    format = Documenter.HTML(analytics = "UA-90474609-3",
                             assets = ["assets/favicon.ico"],
                             canonical="https://docs.sciml.ai/SciMLOperators/stable"),
    pages=pages
)

deploydocs(
   repo = "github.com/SciML/SciMLOperators.jl.git";
   push_preview = true
)
