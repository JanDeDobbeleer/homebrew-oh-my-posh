cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "30.6.3"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "54c9cf07ed37c3a5cc2f37eef55b5f9646c3e3ff9bf27e03fd4632b32173372d",
               intel: "7132262653efb8811ac1ee4144e9ccd1e0e2fc1d0e695ab55ed1c9ff64c6ce2c"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

