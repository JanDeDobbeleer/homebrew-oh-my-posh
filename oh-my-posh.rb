class OhMyPosh < Formula
  desc "Prompt theme engine for any shell"
  homepage "https://ohmyposh.dev"
  url "https://github.com/JanDeDobbeleer/oh-my-posh3/archive/v3.64.4.tar.gz"
  sha256 "981259b7179abd81e70c773979cc016a4559abb35aad6c048d7f638ff153430b"
  license "GPL-3.0-only"
  version "3.64.4"

  depends_on "go" => :build
  depends_on "go-bindata" => :build

  def install
    Dir.chdir("src") do
      system "go", "generate"
      system "go", "build", "-o", "oh-my-posh", "-ldflags", "\"-X 'main.Version=3.64.4'\""
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

