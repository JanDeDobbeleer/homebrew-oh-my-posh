cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "30.9.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "16d6dcee5997f0d3639c5fc1954a98f032b745ad7f37433f82581152624d5982",
               intel: "f2e7d8688548b0c6cfcb168c7d543652a642bf1ff1f0750adbb43b9cf2a289f2"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

