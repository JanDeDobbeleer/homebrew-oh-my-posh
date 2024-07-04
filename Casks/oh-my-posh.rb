cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "21.19.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "a09cccc5aba14dd89b0dea8cf1069a48cc62dcab4c9830cd8a67182f754b6b85",
           intel: "4cc5428de0ec3f427df0a0b89d41effd8aa986236dce6f90bfe4964fde0e01cf"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

