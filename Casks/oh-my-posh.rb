cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.14.1"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "dd9d5dcec98dbd375bce5601c9e9b1191801c6321f1c7b87eb7e3668356b729b",
           intel: "95e9a7e311fa6c3f5115cfb2df8bfe9eb5135919be7b21ef51d9b0cbfa4322c6"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

