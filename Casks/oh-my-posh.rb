cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "30.7.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "97ed17da0b40874e73b145c2904d8e965adc647b4cd90344a878698749938827",
               intel: "011b8d15eaa090817943437ad1d60093f604501f737c17a72b95e44e35628cc2"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

