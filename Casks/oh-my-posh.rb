cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "30.1.1"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "365ca1f479c505efe101f37d3ebed55a8d755227fe5ab586b3a8ff65171040ec",
               intel: "73953156f0e85749dd685157a2dacafb4b7e2e930114dd948c2a8a85200a47d6"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

