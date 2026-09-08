cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "31.2.1"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "0658522f7119bf545137f504fad6c0d2f7016b2826f876f38b919fdff07c922f",
               intel: "0a954a2cbaaa97e04b2d37f442af9bdae1a64927dce9d275150f46a7002a64ba"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

