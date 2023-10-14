cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.13.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "be98bcb9d97cb6cc48df1ffe22b546540d7d90312bb20f805fcd74720453d4da",
           intel: "03a45fef44d6f60e1f651b4bb80974374c2a8857d0080c54c8556863c44eb52c"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

