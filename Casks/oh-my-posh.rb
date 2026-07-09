cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "29.24.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "0d826f040c39b4e5cb62541cf7dbb1edfeeed19b2ce3e518edf312b9fc1854d5",
               intel: "8f0e8f6c6949104e8d53280cfccb4059ea02e152352c60cf9bff9b44f67b130c"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

