cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "31.6.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
        sha256 arm:   "6ba241ecd2acfe5f00b889597a4643be98ce0e512f12cd99ffe07bfe755f3f7c",
               intel: "5a70c51490ceb27cf84137d93f044aaa2b5035cf197767c846d70f1d8894c4b6"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

