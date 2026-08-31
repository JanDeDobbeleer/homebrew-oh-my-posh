cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "31.1.1"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "2c2212a834c805a4707178a19c7613d3485ab375f56c4c10ff5d554f3ac32353",
               intel: "6c0a8471bd2bc60af2e51613d235b589c2066e185d5b861d57980349f047fe6d"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

