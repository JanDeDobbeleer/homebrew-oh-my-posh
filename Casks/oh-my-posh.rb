cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "24.6.3"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "1549e2bc87f699ec7679464732daef2cf9005bf8cd7a42148c1fc002d416bdfe",
           intel: "1b773e478bebcf6a30813ba82704546c3ef2406cd971b2c3b7dcfc65b8c2a880"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

