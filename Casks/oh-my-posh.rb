cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "31.9.1"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
        sha256 arm:   "fbe1c3eb65ad9e10311dbb451c82aa9c7926dbc015dc714d02d89d3e5ae4a48d",
               intel: "031969e78794c33a5394f8bb028210fa88e534b44565729f595c32c20f69d38b"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

