cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "30.4.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "7e8713a1e2713acd92543a55ab6d26f80b8dfc53ec555d7cc24202b0bd2838c2",
               intel: "104681e410e99f2fc726bc26206d6e7e76a5de546a26bdb411f4d979caf4d6ca"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

