cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "29.26.1"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "2dbb39a02c1c920a0249f21050ad24d6735f3aa33efbf1985dbf91a1e740c5cd",
               intel: "38058b24b4e0e793e110d93bac2ed373fe3f0953b1f79f36d2367bfa7bf9c36a"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

