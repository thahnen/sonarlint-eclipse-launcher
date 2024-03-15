cask "IDz1604" do
  idz_v = "16.0.4"
  version "aqua3.3-20240315GA"
  sha256 "5cde0e6c5d100f1ad06cd4380a489dda6fd0dd9ec1053ba56d4cd5a6096412d2"

  url "https://public.dhe.ibm.com/ibmdl/export/pub/software/htp/zos/tools/#{version}/direct/IDz-aqua-#{idz_v}-macosx-x86_64.zip"
  name "IBM Developer for z/OS 16.0.4"
  desc "Comprehensive, robust toolset for developing z/OS applications (Java 11)"
  homepage "https://www.ibm.com/products/developer-for-zos"

  app "IBM Developer for zOS.app", target: "IBM IDz #{idz_v}.app"
end
