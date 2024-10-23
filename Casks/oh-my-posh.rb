cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "23.20.3"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "b138bf3e3672d36c4c034120d81cf992b51b4a39c0d487df3a1ebfa26985b64b",
           intel: "142283033f8a6b95cb0eaa7f6092b3b3252696e6ccc230417cffbbd27e9374b1"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

