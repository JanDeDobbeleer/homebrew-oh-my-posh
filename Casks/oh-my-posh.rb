cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "29.10.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "4f96de4cf14c083642a78a49686b8ae60eb59b686a117aa4f8e3ec9acdad8ee0",
           intel: "817f207bf406b6b71312836b6569ef24398941bfe7a32010398d74ecf84566a7"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

