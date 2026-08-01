cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "30.1.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "324f371c609af405e70bdf2c130bf8ff104eb55435ac89539d3800cb61367bfa",
               intel: "84c7d5bff3c6bccff2108c8e52f294335ef2eac9b601730846ad2a88f404811d"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

