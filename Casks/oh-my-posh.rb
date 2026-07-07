cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "29.22.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "534556da88e3cd0d553241503aa7431804c6c57b7f29334e7ba94593f1acfd42",
               intel: "764a1239d7416729da9c1b2f0b74c6a06e42cdc4b9ac6e9f1a01f957f88bb6f4"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

