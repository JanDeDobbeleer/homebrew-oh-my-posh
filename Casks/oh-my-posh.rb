cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "23.16.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "fdfe1dea997e4b533c8a5a9e1383cf4c8ff2bebb06d0ea1a5d891f35e660eabc",
           intel: "563a25b875b488e7b2c5310f1d0dd788e184dd05e199ed38edd90d5ce7328955"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

