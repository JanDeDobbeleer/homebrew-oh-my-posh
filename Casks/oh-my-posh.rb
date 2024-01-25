cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "19.8.1"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "35617bfec50a5f10640754ca150b55190f47fe7fe14e6e3add3c5699ca1b9b52",
           intel: "30d9e1a41098018a26a7700804e7fbd097d7651abe3250b95f7a553183a6648e"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

