cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "33.1.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
        sha256 arm:   "1e5229ef691dcc2309288d76ca3a2ee87afba5b37135160e2a39716b9160a43d",
               intel: "3ba1549a711e5a0c26a75210a2988f19aa76cccfc48a200c99ae346fbeda24e7"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

