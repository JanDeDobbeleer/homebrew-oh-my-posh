cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "25.23.2"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "cd1c24dedad62128b0c483d8da9fc71f2cfff5fc064f8d73abd3088921fdcd3d",
           intel: "2a2d9debbdd34d8f17eeed39eb41a4b76545e21e012a0d0061de0adee8a7774d"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

