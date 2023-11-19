cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.26.1"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "a307d4c4f4beefbdb79b21dfa59bbabf3bc2139390aab82b18c3f372fc13e836",
           intel: "d39a10d463144c694703f6f49fb41f916b99afa3143af0492a4f4558e27a8fa5"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

