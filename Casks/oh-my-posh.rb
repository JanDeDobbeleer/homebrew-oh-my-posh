cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "32.0.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
        sha256 arm:   "c81f2d2d64b19441cfd3c00300489c78601e931d43885b6acd7ec687af8122e6",
               intel: "8d2ed65b31f223517df694bef2cd2f0999f959faa351aa36695296905dea93f9"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

