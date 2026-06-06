cask "forma" do
  version "0.1.3"
  sha256 "20ce641a7db17fed009de7b986f8afa54a0605426132d5345007d77fc4ec3d47"

  url "https://github.com/Ven7u/forma-synth/releases/download/v#{version}/Forma-v#{version}-macos-universal.dmg"
  name "Forma"
  desc "Polyphonic software synthesizer for macOS"
  homepage "https://ven7u.github.io/forma-synth/"

  app "Forma.app"

  zap trash: [
    "~/Library/Application Support/Forma",
  ]
end
