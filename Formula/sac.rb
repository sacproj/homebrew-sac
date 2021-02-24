class Sac < Formula
  desc "Slides as Code"
  homepage "https://github.com/sacproj"

  url "https://github.com/sacproj/sac-cli/releases/download/2.0.3/sac-cli.tar.gz"
  version "2.0.3"
  sha256 "931f234964f7a1c58b1b98da4a887ffbdf4f7ddd39f5c8ebe01927a2b1028a9c"
  license "MIT"

  def install
    bin.install "sac"
    libexec.install "pdf.js"
  end
end
