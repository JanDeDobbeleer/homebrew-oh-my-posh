cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "30.8.1"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "ff9981a4920922d9bd509a583f37b92637502158438539d2c331d10723b9a1ba",
               intel: "0a383bb3d063f9d2c0701c78177d7b5c23099e5cab934c34d336af38ba1516b9"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

