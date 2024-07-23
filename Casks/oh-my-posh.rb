cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "22.0.3"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "ff390c8109fa2646259792d7ee523978c93f5387aefcb5c318c6d0b92aad4313",
           intel: "c323c170f1d0a0cd8236db6afb9b0e0895f74008e3403b059ccb6f3b893eaf57"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

