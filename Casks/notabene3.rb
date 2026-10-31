cask "notabene3" do
  arch arm: "arm64", intel: "x86_64"

  version "3.001"
  sha256 arm:   "2ede5f1fa260ec8552467b27d426c7ec8c2a97cfc46bd84f9fac8058cf36de9f",
         intel: "29c257821323b574f71e7b44421a4c33d0e86cf2954fa3e95f23701949d4e987"

  url "https://notabene3.com/downloads/notabene3-#{version}-macos-#{arch}.dmg"
  name "Notabene3"
  desc "Learn to read music by playing what's on the staff"
  homepage "https://notabene3.com/"

  livecheck do
    url "https://notabene3.com/version.php"
    regex(/^(\d+\.\d+)$/)
  end

  depends_on macos: :ventura

  app "Notabene3.app"

  zap trash: [
    "~/.config/com.notabene3",
    "~/Library/Application Support/com.notabene3",
    "~/Library/Preferences/com.notabene3.notabene3.plist",
  ]
end
