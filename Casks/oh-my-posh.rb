cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "25.20.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "f9629bf242ba05774f1c4634e2b01f0efd5aa6a918bf8bcbaa1c114203e457bc",
           intel: "3ddecd3b6a0b58f029be6db461171330fbdf688e1bd7439426f3bdad1dd6f2d2"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

