cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "19.1.1"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "478cdda17089465c90739485d97faae7d8a59c5540a7d1d182fe2ca8e9fb137d",
           intel: "c11b221b92dbf2235ce87c421dc05e1c12d1a0a3c6ad574b30728146890a0943"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

