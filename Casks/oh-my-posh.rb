cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.23.1"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "c753b2a166bc4413a597d4d0c04352adf38e42c5617d47cdf4925b7ddfd3a1be",
           intel: "c7e54e9f1dbc6c4dcf7be0fbbcba4f2821a5d81992815d44a52e0c66f1a9f47d"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

