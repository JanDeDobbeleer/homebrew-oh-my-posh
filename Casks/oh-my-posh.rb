cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "29.29.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "14cc56e89a34caeddca1b0adfe71337f49b8a0cc205f183aaecf99d54ae40c6d",
               intel: "fe9c22031f72fcd156b84cbf3b6773c0b8994f327bb95d225beea48f33da48fb"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

