cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.24.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "e55f651a11ed1a7b8d5ec5f155ba5008acd6b3d01b645a60ccac7ac9b89836bd",
           intel: "d7b04e1ee13b0ef2a195dec987c9093af0d7b9b34d3a14a71fe44861efb2eddb"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

