cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "30.6.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "93b4fc56c38b7d71a03949bb3a93aff929529b05e67973d7c9422510ed904e18",
               intel: "49e264e562a73a79d57d24544673c0000e0bdc45060a9654eebcddea6727f1d6"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

