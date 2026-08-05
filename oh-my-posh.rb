class OhMyPosh < Formula
  desc "Prompt theme engine for any shell"
  homepage "https://ohmyposh.dev"
  url "https://github.com/JanDeDobbeleer/oh-my-posh/archive/v30.6.1.tar.gz"
  head "https://github.com/JanDeDobbeleer/oh-my-posh.git", branch: "main"
  sha256 "1bb0d565aed8e13eca60f021884d01904ca545503906ba1b80623e2c09488b75"
  license "MIT"
  version "30.6.1"

  depends_on "go@1.26" => :build

  def install
    Dir.chdir("src") do
      ENV["GOEXPERIMENT"] = "greenteagc,jsonv2"
      ENV["GOPROXY"] = ENV.has_key?("HOMEBREW_GOPROXY") ? ENV["HOMEBREW_GOPROXY"] : ""
      system("go build -buildvcs=false -o=oh-my-posh -ldflags=\"-s -w -X 'github.com/jandedobbeleer/oh-my-posh/src/build.Version=30.6.1' -X 'github.com/jandedobbeleer/oh-my-posh/src/build.Date=2026-08-05T07:16:35Z'\"")
      bin.install "oh-my-posh"
    end
    mv "themes", prefix
  end

  def caveats
    <<~EOS
      Thanks for installing Oh My Posh.
      Have a look at https://ohmyposh.dev/docs/ for detailed instructions for your shell.
      Sample themes can be found at $(brew --prefix oh-my-posh)/themes.

      If you're enjoying Oh My Posh, feel free to donate or become a sponsor.
      https://github.com/sponsors/JanDeDobbeleer

      In case you're looking for help, want to share how you use Oh My Posh, or find like-minded individuals, join our Discord community!
      https://discord.gg/n7E3DkXssv
    EOS
  end

  test do
    system "#{bin}/oh-my-posh", "--help"
  end
end

