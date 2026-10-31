cask "notabene3" do
  arch arm: "arm64", intel: "x86_64"

  version "3.001"
  sha256 arm:   "af8f29088fc7a28ffd715a404e10cc0292d9943aa0346fb3d92b8302856b0dc3",
         intel: "f8d7197429082312ae313d289132caca4dd45d6442628f25372be58f577b64cf"

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
