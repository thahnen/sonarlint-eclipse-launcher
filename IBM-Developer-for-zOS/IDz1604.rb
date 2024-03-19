cask "IDz1604" do
  idz_v = "16.0.4"
  version "aqua3.3-20240315GA"
  sha256 "1446b455c08a4021106268372b28805c88f0f7fe1a3928579bd0036d73a8982d"

  url "https://public.dhe.ibm.com/ibmdl/export/pub/software/htp/zos/tools/#{version}/direct/IDz-aqua-#{idz_v}-macosx-x86_64.zip"
  name "IBM Developer for z/OS 16.0.4"
  desc "Comprehensive, robust toolset for developing z/OS applications (Java 11)"
  homepage "https://www.ibm.com/products/developer-for-zos"

  app "IBM Developer for zOS.app", target: "IBM IDz #{idz_v}.app"
end
