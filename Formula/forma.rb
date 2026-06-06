class Forma < Formula
  desc "Polyphonic software synthesizer for macOS"
  homepage "https://ven7u.github.io/forma-synth/"
  url "https://github.com/Ven7u/forma-synth/releases/download/v0.1.2/Forma-v0.1.2-macos-universal.zip"
  sha256 "7842d318f94518df96fab667305699d4c77f3c600892a5bbbbee2da28720c8e8"
  license "GPL-3.0-only"

  def install
    bin.install "Contents/MacOS/forma"
    # Ship factory patches and resources alongside the binary so the app
    # finds them via current_exe().parent().parent().join("Resources/...").
    # Lands at <prefix>/Resources/, and parent().parent() from
    # <prefix>/bin/forma resolves to <prefix>.
    (prefix/"Resources").install Dir["Contents/Resources/*"]
  end

  test do
    assert_predicate bin/"forma", :executable?
  end
end
