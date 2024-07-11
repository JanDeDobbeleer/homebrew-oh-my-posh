cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "21.23.3"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "988f3310ef7fb05d49f77baea45bc23d9622313eadba35909ed7e04de926982f",
           intel: "73b12d881d0297cca85240b6940f3dde1d810e096284fd6a9b7c613a5d670690"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

