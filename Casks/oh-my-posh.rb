cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "32.1.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
        sha256 arm:   "95fd409cdf4e22cc9eca4b973d82c0a3195f319d50b3ff4fd38b81bcc6e4ba73",
               intel: "b1091d37ebc54dac055bd19bf6627aa69b48f9d529c47e03a0bb01d342fbbf20"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

