cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "19.0.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "d8c0ff256e88618c44a8aa10c9abe71d6d56432469dfe0a729f53a326aa0be05",
           intel: "e62774f693dffd482abdf159770bf707f46ec4fcbf78b03b672b8cfb828802eb"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

