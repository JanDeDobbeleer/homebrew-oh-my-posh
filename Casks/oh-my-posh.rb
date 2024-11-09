cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "24.2.2"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "d10f20bed8f9f68b6de65c0e836c1d0d4e24e096e4c6efd7994b8d3d2e215310",
           intel: "9ddbc0e9c8dc7c500e617d756b87b1c735b30a9cde32ff92b5c3f25a3832cad5"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

