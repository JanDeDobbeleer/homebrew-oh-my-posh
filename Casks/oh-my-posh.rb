cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "19.21.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "c61efcfcd9fbbeba9a86bcf0ed99d81173c28ff482c7ab3a0533766baaf527f8",
           intel: "09a7f2be45c2d96267b17c3a0a53acb1d5cecb8a7a5dc2cbdf619aa78c632f50"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

