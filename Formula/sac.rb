class Sac < Formula
  desc "Slides as Code"
  homepage "https://github.com/sacproj"

  url "https://github.com/sacproj/sac-cli/releases/download/2.0.8/sac-cli.tar.gz"
  version "2.0.8"
  sha256 "1254b430919587440cd4030ba3eead8acb298d36efe7602a8e826e1538703086"
  license "MIT"

  def install
    bin.install "sac"
    libexec.install "pdf.js"
  end
end
