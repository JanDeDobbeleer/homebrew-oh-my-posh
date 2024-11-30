cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "24.11.2"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "d322053fae5c6b79a3fed4ac8ef58b1bbf400a0c85599a7fd6495d17fc7d6960",
           intel: "1e9259f437b22cae4157f249cb1c1d7d20737a4a9d673b4ea7f3c6d1c75148f6"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

