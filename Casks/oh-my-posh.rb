cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "31.8.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
        sha256 arm:   "691447df3b8a3c51a018959fdb5fdfa1aa5132e36f5614d038ed4461f8cee3c8",
               intel: "b6bfd5d77943203780bcfc0f57c3924cc983e1a62b55798aed32b0c4e448e304"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

