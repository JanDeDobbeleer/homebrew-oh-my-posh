cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "29.30.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "66f8f4ff03ce5e69c665cf08dd0cf9cfad85f69fcb7d465b9ae47e9919a091e8",
               intel: "b9935a48f402211942f9a14633c86cf00d28081393abfab6cefe6f66623754cf"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

