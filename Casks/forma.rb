cask "forma" do
  version "0.1.2"
  sha256 "c19ece18a9735eb39bc66ab6b850bc460dd895a02ebee45b0a6bf0f824af852c"

  url "https://github.com/Ven7u/forma-synth/releases/download/v#{version}/Forma-v#{version}-macos-universal.dmg"
  name "Forma"
  desc "Polyphonic software synthesizer for macOS"
  homepage "https://ven7u.github.io/forma-synth/"

  app "Forma.app"

  zap trash: [
    "~/Library/Application Support/Forma",
  ]
end
