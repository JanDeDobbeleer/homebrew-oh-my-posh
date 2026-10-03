cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "31.4.1"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "e2adee85433db90088c87423e8da725592416e9977aed635822848c9afcb0d80",
               intel: "f811ae87da07e1ba70ef580bbaf5e28e4b2a3ecc8bca3ca92f06d76f7b460e80"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

