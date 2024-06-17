cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "21.11.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "2d4b26a475470ecce7a2e089c8bb6e74abb841199f9fb0409fcbb35c8e52052e",
           intel: "d1b26440b41aca97b622a5f0b0ea0776c34a18f492eb46b1eaace5bb8eb8c8de"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

