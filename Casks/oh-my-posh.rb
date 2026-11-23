cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "33.4.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
        sha256 arm:   "eedd12e9bc94dcf8e5f1373291f199695a7b95410771b47c717f758e41bffdc6",
               intel: "acd1c8f0f574a3f34abf5f37242db6731d80da44cd2a0bd1df7fea44d390398d"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

