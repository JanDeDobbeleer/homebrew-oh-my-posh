cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "28.9.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "7d4e20658b5759f4bc9713d2b726824892fcd09307e875e7ef07723b8aaeca43",
           intel: "f8c17118884eff43cef1ae19a8179d11fc9f7f7dd6f7c368a4bb4422aba7984f"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

