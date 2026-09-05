cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "31.1.3"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "65143577ab6cb46c1db0502f66337069d50c5b3cfb473f1d2805d9c93d97dac6",
               intel: "24c1b83dd3604a02ca34d0f6da4b9615e6b04d6b9cac658b4fbd12e90e73ee6d"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

