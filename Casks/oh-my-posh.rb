cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "29.36.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "c02c509fb2892f2d943b26347097651cdf23987b36311ae45c772e6b72ea6817",
               intel: "29db1e48e9896b45d0692b2bc664125b7ec4515aefc717bd125b808e3a3f6851"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

