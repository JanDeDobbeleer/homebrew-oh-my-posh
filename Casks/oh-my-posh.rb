cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "31.1.2"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "92fecaf338c6fb35190cbbe7df15a051c8caa5b031cf57753a6acfc10390721f",
               intel: "4b3448d87c2be71feb3b009d6a07267133a0d9694512f31756fae4193004c952"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

