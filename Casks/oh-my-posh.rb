cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.10.3"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "2b479e969633e5a63e24457b9640b6768b26b6af759c6cea8d70d15be78b2d53",
           intel: "eb37626bb15fb95a102d651ce1b82025966a0c56b774a0c7d2e79d7c4466ed86"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

