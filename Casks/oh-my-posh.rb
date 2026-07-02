cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "29.20.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "278267565316ffeb38459428d823c0281758288281bbc165af222f82da617582",
               intel: "61fd58111da1d1a34193298df285e57e5f72e98384e2478ff90e4a3fe673f321"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

