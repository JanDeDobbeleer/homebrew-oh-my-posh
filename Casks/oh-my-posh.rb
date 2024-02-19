cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "19.11.3"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "af61f54898c667e2fecce4601e6965809d17a610003ee61cc7a68c0106cf9bb8",
           intel: "7ca49ef7091aa8c4bdc746bf13a35c1d55117a63935f1a8cefa0e64d064ae73d"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

