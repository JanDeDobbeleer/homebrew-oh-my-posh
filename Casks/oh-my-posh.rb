cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "19.8.2"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "84a61b7e2b10e001eb2640a4f955dd08aa63b749e4d4a747aa5e15d93ee69244",
           intel: "bd0652fbabd1d130be910bf66989668cd5334aaa2e4e90c0c77d50e1396a4f43"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

