cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "30.6.5"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "27b3d4d43632f333472665f8ae4260f66a58b8d1afea741873ef248b61521868",
               intel: "0d1a8d67848a2368d7961741fd148cf77f1cd5a34f97b5130d456dc3a47727f9"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

