cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "24.6.4"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "f5d322505604c228ec501e44b08e7678d5feddb712e76e93e09a4e99e9e00c12",
           intel: "6af6c5e6c0c571f2e855c7f51ce17c66f190dc5b32ea8194d122fc03e74da3b4"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

