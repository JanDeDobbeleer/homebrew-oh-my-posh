cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.20.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "13207be784813cd73f441ab7941bb00932da252ccd863ca64fc31be25bf05e08",
           intel: "fd8dac6b29071cc03beca97cea84c890eabeb079e0090222cfde2a9e58135536"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

