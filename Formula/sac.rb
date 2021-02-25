class Sac < Formula
  desc "Slides as Code"
  homepage "https://github.com/sacproj"

  url "https://github.com/sacproj/sac-cli/releases/download/2.0.1/sac-cli.tar.gz"
  version "2.0.1"
  sha256 "766f34455f9151bfabaf5ad9baa792582147b64ccc0e8723f07d2cf7bc06b65e"
  license "MIT"

  def install
    bin.install "sac"
    libexec.install "pdf.js"
  end
end
