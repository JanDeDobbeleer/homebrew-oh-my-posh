cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "29.20.1"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "be60902bc39f538417deb354044bf33f7506c0608e2d6e8672d815f73d62a72d",
               intel: "36b298909a53d277f0f9b14cddca9b6211ead5ba1240b99f006270dd6b08bc47"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

