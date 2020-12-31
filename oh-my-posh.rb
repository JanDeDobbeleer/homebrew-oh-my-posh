class OhMyPosh < Formula
  desc "Prompt theme engine for any shell"
  homepage "https://ohmyposh.dev"
  url "https://github.com/JanDeDobbeleer/oh-my-posh3/archive/v3.66.4.tar.gz"
  sha256 "aa79980038bed9cf26b5a9c4586563443c2b5ea822fb0c74a4f6576004c75190"
  license "GPL-3.0-only"
  version "3.66.4"

  depends_on "go" => :build
  depends_on "go-bindata" => :build

  def install
    Dir.chdir("src") do
      system "go", "generate"
      system "go", "build", "-o", "oh-my-posh", "-ldflags", "\"-X 'main.Version=3.66.4'\""
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

