class OhMyPosh < Formula
  desc "Prompt theme engine for any shell"
  homepage "https://ohmyposh.dev"
  url "https://github.com/JanDeDobbeleer/oh-my-posh3/archive/v3.64.0.tar.gz"
  sha256 "3cc0309f08b30bbe3c52c7d681a5c8ebfa7e1779ce65eace3cb26cbbc252028e"
  license "GPL-3.0-only"
  version "3.64.0"

  depends_on "go" => :build
  depends_on "go-bindata" => :build

  def install
    Dir.chdir("src") do
      system "go", "generate"
      system "go", "build", "-o", "oh-my-posh", "-ldflags=\"-X 'main.Version=3.62.1'\""
      bin.install "oh-my-posh"
    end
    mv "themes", prefix
  end

  def caveats
    <<~EOS
      Thanks for installing Oh my Posh.
      Have a look at https://ohmyposh.dev/docs/installation for detailed instructions for your shell.
      Sample themes can be found at $(brew --prefix oh-my-posh)/themes.
    EOS
  end

  test do
    system "#{bin}/oh-my-posh", "--help"
  end
end

