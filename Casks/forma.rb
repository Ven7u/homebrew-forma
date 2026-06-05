cask "forma" do
  version "0.1.1"
  sha256 "31b97ca1a91c3263f9b9ebb7a295568e9744577ebb838f0d71a86c2c7791ec78"

  url "https://github.com/Ven7u/forma-synth/releases/download/v#{version}/Forma-v#{version}-macos-universal.dmg"
  name "Forma"
  desc "Polyphonic software synthesizer for macOS"
  homepage "https://ven7u.github.io/forma-synth/"

  app "Forma.app"

  zap trash: [
    "~/Library/Application Support/Forma",
  ]
end
