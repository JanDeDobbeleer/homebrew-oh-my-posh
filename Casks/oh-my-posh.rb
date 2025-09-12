cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "26.23.3"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "627ed68d36417bf53853e8b058ce02dae9ec26f2ddcab9c1e7758c9dea2bf866",
           intel: "9e229565cb2aa927a544ed2b0b4c42641a9258f5cee3bd40ce5f0b1dd58095a5"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

