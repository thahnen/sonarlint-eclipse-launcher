cask "IDz1602" do
  idz_v = "16.0.2"
  version "aqua3.3-20230616GA"
  sha256 "2fd94421e8895f76c404f071b41841dc99bfc561cae49d0697aac7e7024fdf60"

  url "https://public.dhe.ibm.com/ibmdl/export/pub/software/htp/zos/tools/#{version}/direct/IDz-aqua-#{idz_v}-macosx-x86_64.zip"
  name "IBM Developer for z/OS 16.0.2"
  desc "Comprehensive, robust toolset for developing z/OS applications (Java 11)"
  homepage "https://www.ibm.com/products/developer-for-zos"

  app "IBM Developer for zOS.app", target: "IBM IDz #{idz_v}.app"
end
