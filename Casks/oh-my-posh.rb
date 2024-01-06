cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "19.4.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "1d748165fba089f6ea922091d4809dbe9125a4a4669426f99a28fc441548c19b",
           intel: "76e6bbf1002c7286e277d996895bc9ab1a9a0d19f5dae9d87579002ac664653f"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

