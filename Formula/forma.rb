class Forma < Formula
  desc "Polyphonic software synthesizer for macOS"
  homepage "https://ven7u.github.io/forma-synth/"
  url "https://github.com/Ven7u/forma-synth/releases/download/v0.1.3/Forma-v0.1.3-macos-universal.zip"
  sha256 "1be08a7f4a7a5db40044176d5f4cd8c4f4105c31b2d0fa6cc742a31485c8dbc8"
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
