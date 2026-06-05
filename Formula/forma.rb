class Forma < Formula
  desc "Polyphonic software synthesizer for macOS"
  homepage "https://ven7u.github.io/forma-synth/"
  url "https://github.com/Ven7u/forma-synth/releases/download/v0.1.1/Forma-v0.1.1-macos-universal.zip"
  sha256 "fe264bfe8defbb9137007dc0d7e851abc97ef606681f6d59fc74072ef94052c3"
  license "GPL-3.0-only"

  def install
    bin.install buildpath/"Forma.app/Contents/MacOS/forma"
  end

  test do
    assert_predicate bin/"forma", :executable?
  end
end
