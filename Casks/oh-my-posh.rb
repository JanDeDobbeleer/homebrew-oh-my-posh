cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "29.25.1"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "0ed842c9329e5d08874df23c56bd06289bc5bdb20a6e49cbc293f1fb9dd36991",
               intel: "6ba49e519b42f11d436fa88417131e36016390f1d667864cd81c5844b3fe7726"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

