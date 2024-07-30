cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "23.3.3"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "a2d2118c378bc9c1df5a4fdc0117e4c95ecfc011ec583af2f5b3dcd28d9d2651",
           intel: "7a3fa117bd1e997edfd78e332df9769098f7fb935fb67df1ef425fd661de75fe"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

