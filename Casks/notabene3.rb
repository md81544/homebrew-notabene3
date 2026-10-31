cask "notabene3" do
  version "3.001"

  on_arm do
    url "https://notabene3.com/downloads/notabene3-#{version}-macos-arm64.dmg"
    sha256 "d479e3f0d0e7c0de1da3bc78d3dd1a680348f049"
  end
  on_intel do
    url "https://notabene3.com/downloads/notabene3-#{version}-macos-x86_64.dmg"
    sha256 "f344b022b8fad0e2ea8efb33822986224e0cb8fe"
  end

  name "Notabene3"
  desc "Learn to read music by playing"
  homepage "https://notabene3.com/"

  livecheck do
    url "https://notabene3.com/version.php"
    regex(/^(\d+\.\d+)$/)
  end

  depends_on macos: ">= :ventura"

  app "Notabene3.app"

  zap trash: [
    "~/.config/com.notabene3",
    "~/Library/Application Support/com.notabene3",
    "~/Library/Preferences/com.notabene3.notabene3.plist",
  ]
end

