class Sac < Formula
  desc "Slides as Code"
  homepage "https://github.com/sacproj"

  url "https://github.com/sacproj/sac-cli/releases/download/2.0.2/sac-cli.tar.gz"
  version "2.0.2"
  sha256 "62fa89854c101a555a8dca79dae406939d1b6579c056a46a33db68df994b3c8e"
  license "MIT"

  def install
    bin.install "sac"
    libexec.install "pdf.js"
  end
end
