cd $(dirname $0)
rm -r -f publish
dotnet publish -c Release -r win-x64 -o publish/win-x64 --no-self-contained --nologo -p:PublishReadyToRun=true
dotnet publish -c Release -r win-arm64 -o publish/win-arm64 --no-self-contained --nologo -p:PublishReadyToRun=true
dotnet publish -c Release -r linux-x64 -o publish/linux-x64 --no-self-contained --nologo -p:PublishReadyToRun=true
dotnet publish -c Release -r linux-arm64 -o publish/linux-arm64 --no-self-contained --nologo -p:PublishReadyToRun=true
dotnet publish -c Release -r osx-x64 -o publish/osx-x64 --no-self-contained --nologo -p:PublishReadyToRun=true
dotnet publish -c Release -r osx-arm64 -o publish/osx-arm64 --no-self-contained --nologo -p:PublishReadyToRun=true
rm -r -f publish/osx*/Eto.*
rm -r -f publish/osx*/MonoMac.dll
rm -r -f publish/osx*/VisualGGPK3.*
rm -r -f publish/osx*/VPatchGGPK3.*
rm -r -f publish/osx*/Magick.*
dotnet publish Examples/VisualGGPK3 -c Release -r osx-x64 -o publish/osx-x64/VisualGGPK3.app/Contents/MacOS --no-self-contained --nologo -p:PublishReadyToRun=true
dotnet publish Examples/VisualGGPK3 -c Release -r osx-arm64 -o publish/osx-arm64/VisualGGPK3.app/Contents/MacOS --no-self-contained --nologo -p:PublishReadyToRun=true
dotnet publish Examples/VPatchGGPK3 -c Release -r osx-x64 -o publish/osx-x64/VPatchGGPK3.app/Contents/MacOS --no-self-contained --nologo -p:PublishReadyToRun=true
dotnet publish Examples/VPatchGGPK3 -c Release -r osx-arm64 -o publish/osx-arm64/VPatchGGPK3.app/Contents/MacOS --no-self-contained --nologo -p:PublishReadyToRun=true
rm -r -f publish/osx*/*.app/Contents/MacOS/*.app
mkdir -p publish/osx-x64/VisualGGPK3.app/Contents/Resources
mkdir -p publish/osx-x64/VPatchGGPK3.app/Contents/Resources
cp -f -T Examples/Icon.icns publish/osx-x64/VisualGGPK3.app/Contents/Resources/Icon.icns
cp -f -T Examples/Icon.icns publish/osx-x64/VPatchGGPK3.app/Contents/Resources/Icon.icns
cp -f -T Examples/Icon.icns publish/osx-arm64/VisualGGPK3.app/Contents/Resources/Icon.icns
cp -f -T Examples/Icon.icns publish/osx-arm64/VPatchGGPK3.app/Contents/Resources/Icon.icns
cp -f -T Examples/VisualGGPK3/Info.plist publish/osx-x64/VisualGGPK3.app/Contents/Info.plist
cp -f -T Examples/VPatchGGPK3/Info.plist publish/osx-x64/VPatchGGPK3.app/Contents/Info.plist
cp -f -T Examples/VisualGGPK3/Info.plist publish/osx-arm64/VisualGGPK3.app/Contents/Info.plist
cp -f -T Examples/VPatchGGPK3/Info.plist publish/osx-arm64/VPatchGGPK3.app/Contents/Info.plist
rm -r -f publish/*/*.deps.json
rm -r -f publish/win*/Xceed.Wpf.AvalonDock.Themes.*
rm -r -f publish/win*/de
rm -r -f publish/win*/es
rm -r -f publish/win*/fr
rm -r -f publish/win*/hu
rm -r -f publish/win*/it
rm -r -f publish/win*/pt-BR
rm -r -f publish/win*/ro
rm -r -f publish/win*/ru
rm -r -f publish/win*/sv
rm -r -f publish/win*/zh-Hans