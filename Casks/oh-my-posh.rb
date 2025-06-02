cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "26.2.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "9438b2e06f89c0f351e0dfb3a24f23a5e6f7029d90879ce9dc90c71f936684ee",
           intel: "5cdbc3e7b4c3001629f5c58f682767d5d776c93ffff4bfdd3c7d4e3e8a9fde05"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

