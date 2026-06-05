cask "forma" do
  version "0.1.0"
  sha256 "f0fb0ef45d7bbf0f819e84fa7f8fcfb0d21442ac15ad75ef79596d304b38fb0b"

  url "https://github.com/Ven7u/forma-synth/releases/download/v#{version}/Forma-v#{version}-macos-universal.dmg"
  name "Forma"
  desc "Polyphonic software synthesizer for macOS"
  homepage "https://ven7u.github.io/forma-synth/"

  app "Forma.app"

  zap trash: [
    "~/Library/Application Support/Forma",
  ]
end
