cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "24.0.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "5fe227f9b0737f865a2a85e55cd9dc2b6a3bc5639ea77ea4642f4e1ce2c839e8",
           intel: "23f83551837a7bf65b9c7647c4e597a3ecb102a94bcc5a38f559539ab0b37ea7"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

