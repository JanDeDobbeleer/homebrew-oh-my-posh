cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "33.0.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
        sha256 arm:   "9b03eca1261e67cb4beb1ecec13e7fdab0f5e46615648393a68ae6841cd78bb4",
               intel: "942e4308a3f32ea913d076f89313e74f11dbeebd9a429f7a879cdc72ea94fbe0"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

