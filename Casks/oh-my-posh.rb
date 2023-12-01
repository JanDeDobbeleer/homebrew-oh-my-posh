cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.27.1"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "3d6a2ba5389efd50fb799fe018990e51889c4f678be2bbb0be8aa6d2552b26c2",
           intel: "f23276d4c99d21b4fef26019a07551b7c9ac7137efff3950ab0da03d429f81f0"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

