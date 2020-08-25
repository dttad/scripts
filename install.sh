#!/bin/bash

FONTS_DIR=$HOME/.fonts
LIST_FONTS=("CascadiaCodePL.ttf" "FiraCode-SemiBold.ttf" "Hasklig-ExtraLightIt.otf" "Hasklig-Semibold.otf" "InputMono-Light.ttf" "SourceCodePro-BoldIt.ttf" "SourceCodePro-Regular.ttf" "CascadiaCode.ttf" "Hack-BoldItalic.ttf" "Hasklig-ExtraLight.otf" "InputMono-BlackItalic.ttf" "InputMono-MediumItalic.ttf" "SourceCodePro-Bold.ttf" "SourceCodePro-SemiboldIt.ttf" "CascadiaMonoPL.ttf" "Hack-Bold.ttf" "Hasklig-It.otf" "InputMono-Black.ttf" "InputMono-Medium.ttf" "SourceCodePro-ExtraLightIt.ttf  SourceCodePro-Semibold.ttf" "CascadiaMono.ttf" "Hack-Italic.ttf" "Hasklig-LightIt.otf" "InputMono-BoldItalic.ttf" "InputMono-Regular.ttf" "SourceCodePro-ExtraLight.ttf" "FiraCode-Bold.ttf" "Hack-Regular.ttf" "Hasklig-Light.otf" "InputMono-Bold.ttf" "InputMono-ThinItalic.ttf" "SourceCodePro-It.ttf" "FiraCode-Light.ttf" "Hasklig-BlackIt.otf" "Hasklig-MediumIt.otf" "InputMono-ExtraLightItalic.ttf" "InputMono-Thin.ttf" "SourceCodePro-LightIt.ttf" "FiraCode-Medium.ttf" "Hasklig-Black.otf" "Hasklig-Medium.otf" "InputMono-ExtraLight.ttf" "monaco.ttf" "SourceCodePro-Light.ttf" "FiraCode-Regular.ttf" "Hasklig-BoldIt.otf" "Hasklig-Regular.otf" "InputMono-Italic.ttf" "SourceCodePro-BlackIt.ttf" "SourceCodePro-MediumIt.ttf" "FiraCode-Retina.ttf" "Hasklig-Bold.otf" "Hasklig-SemiboldIt.otf" "InputMono-LightItalic.ttf" "SourceCodePro-Black.ttf" "SourceCodePro-Medium.ttf" "Menlo-Regular.ttf" "FantasqueSansMono-Bold.ttf" "FantasqueSansMono-BoldItalic.ttf" "FantasqueSansMono-Italic.ttf" "FantasqueSansMono-Regular.ttf" "JetBrainsMono-Bold-Italic.ttf" "JetBrainsMono-Bold.ttf" "JetBrainsMono-ExtraBold-Italic.ttf" "JetBrainsMono-ExtraBold.ttf" "JetBrainsMono-ExtraLight-Italic.ttf" "JetBrainsMono-ExtraLight.ttf" "JetBrainsMono-Italic.ttf" "JetBrainsMono-Light-Italic.ttf" "JetBrainsMono-Light.ttf" "JetBrainsMono-Medium-Italic.ttf" "JetBrainsMono-Medium.ttf" "JetBrainsMono-Regular.ttf" "JetBrainsMono-SemiLight-Italic.ttf" "JetBrainsMono-SemiLight.ttf" "JetBrainsMono-Variable-Italic.ttf" "JetBrainsMono-Variable.ttf" "JetBrainsMonoNL-Bold-Italic.ttf" "JetBrainsMonoNL-Bold.ttf" "JetBrainsMonoNL-ExtraBold-Italic.ttf" "JetBrainsMonoNL-ExtraBold.ttf" "JetBrainsMonoNL-ExtraLight-Italic.ttf" "JetBrainsMonoNL-ExtraLight.ttf" "JetBrainsMonoNL-Italic.ttf" "JetBrainsMonoNL-Light-Italic.ttf" "JetBrainsMonoNL-Light.ttf" "JetBrainsMonoNL-Medium-Italic.ttf" "JetBrainsMonoNL-Medium.ttf" "JetBrainsMonoNL-Regular.ttf" "JetBrainsMonoNL-SemiLight-Italic.ttf" "JetBrainsMonoNL-SemiLight.ttf" "UbuntuMono-B.ttf" "UbuntuMono-BI.ttf" "UbuntuMono-R.ttf" "UbuntuMono-RI.ttf")

function die() {
	echo "${@}"
	exit 1
}

cat << EOF
--------------------------------
Easy Programming Fonts Installer
--------------------------------
- Maintained by Dat Tran (github.com/trdat)

EOF

# Create font dir if not exists
if [[ ! -e $FONTS_DIR ]]; then
	mkdir $FONTS_DIR || die "Could not make $FONTS_DIR"
fi

for FONT in ${LIST_FONTS[*]}; do
    echo "Downloading $FONT"; echo
    wget -c https://github.com/trdat/easy-programming-fonts-installer/blob/master/local/$FONT 2> /dev/null \
      || die "Fail to download ${FONT}"
    mv $FONT $FONTS_DIR || die "Could not install $FONT"
    echo "Installed $FONT successfully"; echo
done

cat << EOF
--------------------
All fonts installed!
--------------------
EOF
