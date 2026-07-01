cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "29.19.1"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "1a4af23be8f220becda683ab37928709a3036eccd6d93451a660164f1cf37466",
               intel: "5c2ac3b28dd93a6862a4e0a0b6df120231d691b344c2e344e8ad60cf69df7f9f"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

