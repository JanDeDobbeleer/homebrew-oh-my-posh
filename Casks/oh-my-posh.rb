cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "33.2.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
        sha256 arm:   "1f4a00e6322b193aa732c2ccd3c1ab450d593d97841c77f6c0ed1260d89ff0bd",
               intel: "e4355f8634be61bc8d722ec365503e0a6f5eddc877ec6386708de8c47272599a"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

