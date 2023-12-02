cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "19.1.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "58763cb9fca22bb329a5c99b699f3efd79fd6f1e23e4d049fb4540e95df790e2",
           intel: "5cf4bcf91d3725707cc6b84027d00322346318b31c4375a7674a8da2d0f594ee"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

