cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "29.26.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "b6269ac8444c033fbf3a9bdda654ce05ab80497f1931b8a2ddf67bcaaa1deebd",
               intel: "9382893ad9868a22a214205a1913f13f376ba14000aaacb19f4f58bb5f312fa9"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

