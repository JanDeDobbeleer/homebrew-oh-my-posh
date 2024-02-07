cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "19.8.3"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "4855d2d4bcd5ec98d7f45c94d2edfb53409a0f0543c3acedf525231b033dbf3a",
           intel: "5461ef2ff4fd5a8388f3752433a915e8f6ef2ff6dc9b8d7dd311ab127a6fd450"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

