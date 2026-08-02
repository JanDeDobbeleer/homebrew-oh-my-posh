cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "30.3.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "174d34a584ca2ebf224bc76f0e6deae22a26527f5543481cb5671a24a71e3f43",
               intel: "4c1c36e75c371d1572b079c44f72c2ced7f3fe9f133db5aa5f055f8891d3eaab"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

