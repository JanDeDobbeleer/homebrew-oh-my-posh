cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "25.21.1"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "be250e4ea608225f4b2cb9f0864c5cd4695214f2ef629eed78f0cecabd343d87",
           intel: "b08db56d039a8ef826cfa38e2ee444d88a1eab0e7ce2dd139fc5ab41f3fa3e3a"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

