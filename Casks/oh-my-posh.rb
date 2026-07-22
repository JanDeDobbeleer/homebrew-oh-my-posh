cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "29.35.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "fb3adba1979a55a366b3ba2dc2d3743bec0f4c89c653a2ac1706f8cab06c1100",
               intel: "ec60c38fb95ff4ff11f738127a8cf08dd3c865b561a8dcc829bb02a7bf71b78e"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

