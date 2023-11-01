cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.21.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "c96fdb3575c921aee27e3fd8d6840104bd6f6e8188f4c5d74413cf2ebf3d68ae",
           intel: "1687b7532dc486a72e73455fe22bf1d38804c5bb104225bcb933f65e8e4a0b6a"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

