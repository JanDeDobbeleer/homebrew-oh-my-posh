cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "30.6.4"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "b5cba89cf7fc39afeed859660e4b0fa78acd937f9ed3d23a709c8fc747d4d7a6",
               intel: "35c3aaa66ef32b3d77f5b66b65b82226806eb0d7a7c4182a418ee2d4c0edb773"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

