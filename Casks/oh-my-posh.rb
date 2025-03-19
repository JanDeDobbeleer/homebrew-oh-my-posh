cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "25.5.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "21af9f79b665fc885ef995291c95c8bf43a054fa607176d5f1a5816b9c2553a2",
           intel: "7ed6a8ed046ea2d32a2a7c7d3a048c1ed985dfa3eb5fc2b341c9d170ae0b32a9"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

