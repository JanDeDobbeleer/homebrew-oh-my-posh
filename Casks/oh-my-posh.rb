cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "24.0.11"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "0ba5178603fa4d8e41e05ce863d25bb46a4a24d0135fcca2bd199b4a8ff87b23",
           intel: "f9350a9b3cce4109af2882eb7adfbaab6bbac336c73ca80df29e3d65fc9ad714"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

