cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "29.27.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "028f7f47211dd66b8bc6ec6877d824bb2c8a773ec27f41be951bcf7022453bcd",
               intel: "69c0470109096693bc267d3c8fe2ae288c11c5bbae5b01d0f512a034b5dd4dc8"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

