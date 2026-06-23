cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "29.18.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "5901bbd395de1ff20c756fd56c8aa3a5a4d209532975eb20ad7a704efc11f2a5",
           intel: "c91f6813a2812acbb87adf1e5651e81c00aaaf11819972bf2ebaf87c674e86b0"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

