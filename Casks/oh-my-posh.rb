cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "29.25.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "388aef96c935ca641c4cd8134730201fe9e6270cb2ac23ef784e553409499edf",
               intel: "c2b2bcbbf6048db0fd8b91a2573b72c515fd23eca63ee76395c983827601a724"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

