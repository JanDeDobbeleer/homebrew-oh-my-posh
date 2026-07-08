cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "29.22.1"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "1464796a9978b58f9440a5257a03efae142ee277debc8946100a9c8498048695",
               intel: "85209b275afb1dd1082f80e3bb4cbead87eb6275f6316c62f2dc68893c8394de"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

