cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "19.5.1"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "704f0b054181a0f50b5cfd35e11c81d41c867d8a53929f59abaf43910b57e106",
           intel: "d4671e74e3f10b8d0b6b69b84355e8beec8cabf588a7cbc78b74e52608c47931"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

