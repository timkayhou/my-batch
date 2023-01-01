#!/bin/bash
#SteamDeck 完整中文化 by Mk
sudo steamos-readonly disable
sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman -S glibc --noconfirm
sudo sed -i "s%#zh_CN.UTF-8 UTF-8%zh_CN.UTF-8 UTF-8%" /etc/locale.gen
sudo locale-gen
sudo pacman -S ki18n --noconfirm
sudo pacman -S plasma --noconfirm
sudo pacman -S accounts-qml-module --noconfirm
sudo pacman -S accountsservice --noconfirm
sudo pacman -S acl --noconfirm
sudo pacman -S adobe-source-code-pro-fonts --noconfirm
sudo pacman -S adwaita-icon-theme --noconfirm
sudo pacman -S alsa-card-profiles --noconfirm
sudo pacman -S alsa-lib --noconfirm
sudo pacman -S alsa-plugins --noconfirm
sudo pacman -S alsa-topology-conf --noconfirm
sudo pacman -S alsa-ucm-conf --noconfirm
sudo pacman -S alsa-utils --noconfirm
sudo pacman -S amd-ucode --noconfirm
sudo pacman -S anthy --noconfirm
sudo pacman -S aom --noconfirm
sudo pacman -S appstream --noconfirm
sudo pacman -S appstream-glib --noconfirm
sudo pacman -S appstream-qt --noconfirm
sudo pacman -S arch-install-scripts --noconfirm
sudo pacman -S archlinux-appstream-data --noconfirm
sudo pacman -S archlinux-keyring --noconfirm
sudo pacman -S argon2 --noconfirm
sudo pacman -S ark --noconfirm
sudo pacman -S aspell --noconfirm
sudo pacman -S aspell-en --noconfirm
sudo pacman -S assimp --noconfirm
sudo pacman -S at-spi2-atk --noconfirm
sudo pacman -S at-spi2-core --noconfirm
sudo pacman -S atk --noconfirm
sudo pacman -S atkmm --noconfirm
sudo pacman -S attica --noconfirm
sudo pacman -S attr --noconfirm
sudo pacman -S audit --noconfirm
sudo pacman -S avahi --noconfirm
sudo pacman -S baloo --noconfirm
sudo pacman -S baloo-widgets --noconfirm
sudo pacman -S base --noconfirm
sudo pacman -S bash --noconfirm
sudo pacman -S bash-bats --noconfirm
sudo pacman -S bash-completion --noconfirm
sudo pacman -S bcc --noconfirm
sudo pacman -S bluez --noconfirm
sudo pacman -S bluez-libs --noconfirm
sudo pacman -S bluez-plugins --noconfirm
sudo pacman -S bluez-qt --noconfirm
sudo pacman -S bluez-utils --noconfirm
sudo pacman -S bolt --noconfirm
sudo pacman -S boost-libs --noconfirm
sudo pacman -S bpftrace --noconfirm
sudo pacman -S breeze-grub --noconfirm
sudo pacman -S brotli --noconfirm
sudo pacman -S btop --noconfirm
sudo pacman -S btrfs-progs --noconfirm
sudo pacman -S bubblewrap --noconfirm
sudo pacman -S bzip2 --noconfirm
sudo pacman -S ca-certificates --noconfirm
sudo pacman -S ca-certificates-mozilla --noconfirm
sudo pacman -S ca-certificates-utils --noconfirm
sudo pacman -S cairo --noconfirm
sudo pacman -S cairomm --noconfirm
sudo pacman -S cantarell-fonts --noconfirm
sudo pacman -S caps --noconfirm
sudo pacman -S casync-git --noconfirm
sudo pacman -S cdparanoia --noconfirm
sudo pacman -S cfitsio --noconfirm
sudo pacman -S cifs-utils --noconfirm
sudo pacman -S clang --noconfirm
sudo pacman -S clang-libs --noconfirm
sudo pacman -S compiler-rt --noconfirm
sudo pacman -S convertlit --noconfirm
sudo pacman -S coreutils --noconfirm
sudo pacman -S cpio --noconfirm
sudo pacman -S cpupower --noconfirm
sudo pacman -S crda --noconfirm
sudo pacman -S cryptsetup --noconfirm
sudo pacman -S curl --noconfirm
sudo pacman -S dav1d --noconfirm
sudo pacman -S db --noconfirm
sudo pacman -S dbus --noconfirm
sudo pacman -S dbus-glib --noconfirm
sudo pacman -S dbus-python --noconfirm
sudo pacman -S dconf --noconfirm
sudo pacman -S desktop-file-utils --noconfirm
sudo pacman -S desync-git --noconfirm
sudo pacman -S device-mapper --noconfirm
sudo pacman -S diffutils --noconfirm
sudo pacman -S discount --noconfirm
sudo pacman -S dkms --noconfirm
sudo pacman -S dmidecode --noconfirm
sudo pacman -S dmraid --noconfirm
sudo pacman -S dnssec-anchors --noconfirm
sudo pacman -S dolphin --noconfirm
sudo pacman -S dos2unix --noconfirm
sudo pacman -S dosfstools --noconfirm
sudo pacman -S double-conversion --noconfirm
sudo pacman -S dracut --noconfirm
sudo pacman -S drm_info-git --noconfirm
sudo pacman -S e2fsprogs --noconfirm
sudo pacman -S ebook-tools --noconfirm
sudo pacman -S editorconfig-core-c --noconfirm
sudo pacman -S efibootmgr --noconfirm
sudo pacman -S efivar --noconfirm
sudo pacman -S elfutils --noconfirm
sudo pacman -S ell --noconfirm
sudo pacman -S enchant --noconfirm
sudo pacman -S evtest --noconfirm
sudo pacman -S exfat-utils --noconfirm
sudo pacman -S exiv2 --noconfirm
sudo pacman -S expat --noconfirm
sudo pacman -S f3 --noconfirm
sudo pacman -S fatresize --noconfirm
sudo pacman -S fd --noconfirm
sudo pacman -S ffmpeg --noconfirm
sudo pacman -S file --noconfirm
sudo pacman -S filesystem --noconfirm
sudo pacman -S findutils --noconfirm
sudo pacman -S fish --noconfirm
sudo pacman -S flac --noconfirm
sudo pacman -S flatpak --noconfirm
sudo pacman -S fontconfig --noconfirm
sudo pacman -S frameworkintegration --noconfirm
sudo pacman -S freerdp --noconfirm
sudo pacman -S freetype2 --noconfirm
sudo pacman -S fribidi --noconfirm
sudo pacman -S fuse-common --noconfirm
sudo pacman -S fuse2 --noconfirm
sudo pacman -S fuse3 --noconfirm
sudo pacman -S gamemode --noconfirm
sudo pacman -S gamescope --noconfirm
sudo pacman -S gawk --noconfirm
sudo pacman -S gc --noconfirm
sudo pacman -S gcab --noconfirm
sudo pacman -S gcc --noconfirm
sudo pacman -S gcc-libs --noconfirm
sudo pacman -S gdb --noconfirm
sudo pacman -S gdb-common --noconfirm
sudo pacman -S gdbm --noconfirm
sudo pacman -S gdk-pixbuf2 --noconfirm
sudo pacman -S geoclue --noconfirm
sudo pacman -S geocode-glib --noconfirm
sudo pacman -S gettext --noconfirm
sudo pacman -S giflib --noconfirm
sudo pacman -S git --noconfirm
sudo pacman -S glew --noconfirm
sudo pacman -S glfw-x11 --noconfirm
sudo pacman -S glib-networking --noconfirm
sudo pacman -S glib2 --noconfirm
sudo pacman -S glibc --noconfirm
sudo pacman -S glibmm --noconfirm
sudo pacman -S glslang --noconfirm
sudo pacman -S glu --noconfirm
sudo pacman -S gmp --noconfirm
sudo pacman -S gnupg --noconfirm
sudo pacman -S gnutls --noconfirm
sudo pacman -S gobject-introspection-runtime --noconfirm
sudo pacman -S gpgme --noconfirm
sudo pacman -S gpm --noconfirm
sudo pacman -S gptfdisk --noconfirm
sudo pacman -S gpu-trace --noconfirm
sudo pacman -S graphene --noconfirm
sudo pacman -S graphite --noconfirm
sudo pacman -S grep --noconfirm
sudo pacman -S groff --noconfirm
sudo pacman -S grub --noconfirm
sudo pacman -S gsettings-desktop-schemas --noconfirm
sudo pacman -S gsm --noconfirm
sudo pacman -S gst-plugins-base --noconfirm
sudo pacman -S gst-plugins-base-libs --noconfirm
sudo pacman -S gstreamer --noconfirm
sudo pacman -S gtk-update-icon-cache --noconfirm
sudo pacman -S gtk3 --noconfirm
sudo pacman -S gtkmm3 --noconfirm
sudo pacman -S guile --noconfirm
sudo pacman -S gwenview --noconfirm
sudo pacman -S gzip --noconfirm
sudo pacman -S harfbuzz --noconfirm
sudo pacman -S hicolor-icon-theme --noconfirm
sudo pacman -S hidapi --noconfirm
sudo pacman -S holo-desync --noconfirm
sudo pacman -S holo-keyring --noconfirm
sudo pacman -S holo-pacman --noconfirm
sudo pacman -S holo-pipewire --noconfirm
sudo pacman -S holo-sudo --noconfirm
sudo pacman -S holo-wireplumber --noconfirm
sudo pacman -S htop --noconfirm
sudo pacman -S hunspell --noconfirm
sudo pacman -S hwdata --noconfirm
sudo pacman -S iana-etc --noconfirm
sudo pacman -S ibus --noconfirm
sudo pacman -S ibus-anthy --noconfirm
sudo pacman -S ibus-hangul --noconfirm
sudo pacman -S ibus-pinyin --noconfirm
sudo pacman -S ibus-table --noconfirm
sudo pacman -S ibus-table-cangjie-lite --noconfirm
sudo pacman -S icu --noconfirm
sudo pacman -S iniparser --noconfirm
sudo pacman -S iotop --noconfirm
sudo pacman -S iproute2 --noconfirm
sudo pacman -S iptables --noconfirm
sudo pacman -S iputils --noconfirm
sudo pacman -S iso-codes --noconfirm
sudo pacman -S iw --noconfirm
sudo pacman -S iwd --noconfirm
sudo pacman -S jansson --noconfirm
sudo pacman -S jasper --noconfirm
sudo pacman -S jq --noconfirm
sudo pacman -S js78 --noconfirm
sudo pacman -S json-c --noconfirm
sudo pacman -S json-glib --noconfirm
sudo pacman -S jupiter-dock-updater-bin --noconfirm
sudo pacman -S jupiter-fan-control --noconfirm
sudo pacman -S jupiter-hw-support --noconfirm
sudo pacman -S jupiter-legacy-support --noconfirm
sudo pacman -S kaccounts-integration --noconfirm
sudo pacman -S kactivities --noconfirm
sudo pacman -S kactivities-stats --noconfirm
sudo pacman -S karchive --noconfirm
sudo pacman -S kauth --noconfirm
sudo pacman -S kbd --noconfirm
sudo pacman -S kbookmarks --noconfirm
sudo pacman -S kcmutils --noconfirm
sudo pacman -S kcodecs --noconfirm
sudo pacman -S kcolorpicker --noconfirm
sudo pacman -S kcompletion --noconfirm
sudo pacman -S kconfig --noconfirm
sudo pacman -S kconfigwidgets --noconfirm
sudo pacman -S kcoreaddons --noconfirm
sudo pacman -S kcrash --noconfirm
sudo pacman -S kdbusaddons --noconfirm
sudo pacman -S kdeclarative --noconfirm
sudo pacman -S kded --noconfirm
sudo pacman -S kdelibs4support --noconfirm
sudo pacman -S kdesu --noconfirm
sudo pacman -S kdnssd --noconfirm
sudo pacman -S kdsoap --noconfirm
sudo pacman -S kdsoap-ws-discovery-client --noconfirm
sudo pacman -S kemoticons --noconfirm
sudo pacman -S keyutils --noconfirm
sudo pacman -S kfilemetadata --noconfirm
sudo pacman -S kglobalaccel --noconfirm
sudo pacman -S kguiaddons --noconfirm
sudo pacman -S kholidays --noconfirm
sudo pacman -S kiconthemes --noconfirm
sudo pacman -S kidletime --noconfirm
sudo pacman -S kimageannotator --noconfirm
sudo pacman -S kio --noconfirm
sudo pacman -S kio-extras --noconfirm
sudo pacman -S kio-fuse --noconfirm
sudo pacman -S kirigami2 --noconfirm
sudo pacman -S kitemmodels --noconfirm
sudo pacman -S kitemviews --noconfirm
sudo pacman -S kitty-terminfo --noconfirm
sudo pacman -S kjobwidgets --noconfirm
sudo pacman -S kmod --noconfirm
sudo pacman -S knewstuff --noconfirm
sudo pacman -S knotifications --noconfirm
sudo pacman -S knotifyconfig --noconfirm
sudo pacman -S konsole --noconfirm
sudo pacman -S kpackage --noconfirm
sudo pacman -S kparts --noconfirm
sudo pacman -S kpeople --noconfirm
sudo pacman -S kpmcore --noconfirm
sudo pacman -S kpty --noconfirm
sudo pacman -S kquickcharts --noconfirm
sudo pacman -S krb5 --noconfirm
sudo pacman -S krunner --noconfirm
sudo pacman -S kservice --noconfirm
sudo pacman -S ktexteditor --noconfirm
sudo pacman -S ktextwidgets --noconfirm
sudo pacman -S kunitconversion --noconfirm
sudo pacman -S kuserfeedback --noconfirm
sudo pacman -S kwallet --noconfirm
sudo pacman -S kwayland --noconfirm
sudo pacman -S kwidgetsaddons --noconfirm
sudo pacman -S kwindowsystem --noconfirm
sudo pacman -S kwrite --noconfirm
sudo pacman -S kxmlgui --noconfirm
sudo pacman -S l-smash --noconfirm
sudo pacman -S lame --noconfirm
sudo pacman -S lcms2 --noconfirm
sudo pacman -S ldb --noconfirm
sudo pacman -S ldns --noconfirm
sudo pacman -S less --noconfirm
sudo pacman -S lib32-alsa-lib --noconfirm
sudo pacman -S lib32-alsa-plugins --noconfirm
sudo pacman -S lib32-brotli --noconfirm
sudo pacman -S lib32-bzip2 --noconfirm
sudo pacman -S lib32-curl --noconfirm
sudo pacman -S lib32-dbus --noconfirm
sudo pacman -S lib32-e2fsprogs --noconfirm
sudo pacman -S lib32-expat --noconfirm
sudo pacman -S lib32-flac --noconfirm
sudo pacman -S lib32-fontconfig --noconfirm
sudo pacman -S lib32-freetype2 --noconfirm
sudo pacman -S lib32-gamemode --noconfirm
sudo pacman -S lib32-gcc-libs --noconfirm
sudo pacman -S lib32-glib2 --noconfirm
sudo pacman -S lib32-glibc --noconfirm
sudo pacman -S lib32-harfbuzz --noconfirm
sudo pacman -S lib32-icu --noconfirm
sudo pacman -S lib32-keyutils --noconfirm
sudo pacman -S lib32-krb5 --noconfirm
sudo pacman -S lib32-libasyncns --noconfirm
sudo pacman -S lib32-libcap --noconfirm
sudo pacman -S lib32-libdrm --noconfirm
sudo pacman -S lib32-libelf --noconfirm
sudo pacman -S lib32-libffi --noconfirm
sudo pacman -S lib32-libgcrypt --noconfirm
sudo pacman -S lib32-libglvnd --noconfirm
sudo pacman -S lib32-libgpg-error --noconfirm
sudo pacman -S lib32-libice --noconfirm
sudo pacman -S lib32-libidn2 --noconfirm
sudo pacman -S lib32-libldap --noconfirm
sudo pacman -S lib32-libogg --noconfirm
sudo pacman -S lib32-libpciaccess --noconfirm
sudo pacman -S lib32-libpng --noconfirm
sudo pacman -S lib32-libpsl --noconfirm
sudo pacman -S lib32-libpulse --noconfirm
sudo pacman -S lib32-libsm --noconfirm
sudo pacman -S lib32-libsndfile --noconfirm
sudo pacman -S lib32-libssh2 --noconfirm
sudo pacman -S lib32-libtasn1 --noconfirm
sudo pacman -S lib32-libtirpc --noconfirm
sudo pacman -S lib32-libunistring --noconfirm
sudo pacman -S lib32-libunwind --noconfirm
sudo pacman -S lib32-libva --noconfirm
sudo pacman -S lib32-libva-mesa-driver --noconfirm
sudo pacman -S lib32-libvdpau --noconfirm
sudo pacman -S lib32-libvorbis --noconfirm
sudo pacman -S lib32-libx11 --noconfirm
sudo pacman -S lib32-libxau --noconfirm
sudo pacman -S lib32-libxcb --noconfirm
sudo pacman -S lib32-libxcrypt --noconfirm
sudo pacman -S lib32-libxdamage --noconfirm
sudo pacman -S lib32-libxdmcp --noconfirm
sudo pacman -S lib32-libxext --noconfirm
sudo pacman -S lib32-libxfixes --noconfirm
sudo pacman -S lib32-libxi --noconfirm
sudo pacman -S lib32-libxml2 --noconfirm
sudo pacman -S lib32-libxshmfence --noconfirm
sudo pacman -S lib32-libxss --noconfirm
sudo pacman -S lib32-libxtst --noconfirm
sudo pacman -S lib32-libxxf86vm --noconfirm
sudo pacman -S lib32-llvm-libs --noconfirm
sudo pacman -S lib32-lm_sensors --noconfirm
sudo pacman -S lib32-mangohud --noconfirm
sudo pacman -S lib32-mesa --noconfirm
sudo pacman -S lib32-mesa-vdpau --noconfirm
sudo pacman -S lib32-ncurses --noconfirm
sudo pacman -S lib32-nspr --noconfirm
sudo pacman -S lib32-nss --noconfirm
sudo pacman -S lib32-openal --noconfirm
sudo pacman -S lib32-openssl --noconfirm
sudo pacman -S lib32-opus --noconfirm
sudo pacman -S lib32-p11-kit --noconfirm
sudo pacman -S lib32-pam --noconfirm
sudo pacman -S lib32-pcre --noconfirm
sudo pacman -S lib32-pipewire --noconfirm
sudo pacman -S lib32-readline --noconfirm
sudo pacman -S lib32-renderdoc-minimal --noconfirm
sudo pacman -S lib32-sqlite --noconfirm
sudo pacman -S lib32-systemd --noconfirm
sudo pacman -S lib32-util-linux --noconfirm
sudo pacman -S lib32-vulkan-icd-loader --noconfirm
sudo pacman -S lib32-vulkan-radeon --noconfirm
sudo pacman -S lib32-wayland --noconfirm
sudo pacman -S lib32-xcb-util-keysyms --noconfirm
sudo pacman -S lib32-xz --noconfirm
sudo pacman -S lib32-zlib --noconfirm
sudo pacman -S lib32-zstd --noconfirm
sudo pacman -S libaccounts-glib --noconfirm
sudo pacman -S libaccounts-qt --noconfirm
sudo pacman -S libaio --noconfirm
sudo pacman -S libarchive --noconfirm
sudo pacman -S libass --noconfirm
sudo pacman -S libassuan --noconfirm
sudo pacman -S libasyncns --noconfirm
sudo pacman -S libatasmart --noconfirm
sudo pacman -S libavc1394 --noconfirm
sudo pacman -S libblockdev --noconfirm
sudo pacman -S libbluray --noconfirm
sudo pacman -S libbpf --noconfirm
sudo pacman -S libbsd --noconfirm
sudo pacman -S libbytesize --noconfirm
sudo pacman -S libcanberra --noconfirm
sudo pacman -S libcap --noconfirm
sudo pacman -S libcap-ng --noconfirm
sudo pacman -S libclc --noconfirm
sudo pacman -S libcloudproviders --noconfirm
sudo pacman -S libcolord --noconfirm
sudo pacman -S libcroco --noconfirm
sudo pacman -S libcups --noconfirm
sudo pacman -S libdaemon --noconfirm
sudo pacman -S libdatrie --noconfirm
sudo pacman -S libdbusmenu-qt5 --noconfirm
sudo pacman -S libdmtx --noconfirm
sudo pacman -S libdrm --noconfirm
sudo pacman -S libedit --noconfirm
sudo pacman -S libelf --noconfirm
sudo pacman -S libepoxy --noconfirm
sudo pacman -S libevdev --noconfirm
sudo pacman -S libevent --noconfirm
sudo pacman -S libfdk-aac --noconfirm
sudo pacman -S libffi --noconfirm
sudo pacman -S libfontenc --noconfirm
sudo pacman -S libfreeaptx --noconfirm
sudo pacman -S libgcrypt --noconfirm
sudo pacman -S libglvnd --noconfirm
sudo pacman -S libgpg-error --noconfirm
sudo pacman -S libgssglue --noconfirm
sudo pacman -S libgudev --noconfirm
sudo pacman -S libhangul --noconfirm
sudo pacman -S libibus --noconfirm
sudo pacman -S libical --noconfirm
sudo pacman -S libice --noconfirm
sudo pacman -S libidn2 --noconfirm
sudo pacman -S libiec61883 --noconfirm
sudo pacman -S libimobiledevice --noconfirm
sudo pacman -S libinih --noconfirm
sudo pacman -S libinput --noconfirm
sudo pacman -S libjpeg-turbo --noconfirm
sudo pacman -S libkdcraw --noconfirm
sudo pacman -S libkipi --noconfirm
sudo pacman -S libksba --noconfirm
sudo pacman -S libldac --noconfirm
sudo pacman -S libldap --noconfirm
sudo pacman -S libmbim --noconfirm
sudo pacman -S libmd --noconfirm
sudo pacman -S libmfx --noconfirm
sudo pacman -S libmm-glib --noconfirm
sudo pacman -S libmnl --noconfirm
sudo pacman -S libmodplug --noconfirm
sudo pacman -S libmpc --noconfirm
sudo pacman -S libmtp --noconfirm
sudo pacman -S libndp --noconfirm
sudo pacman -S libnetfilter_conntrack --noconfirm
sudo pacman -S libnewt --noconfirm
sudo pacman -S libnfnetlink --noconfirm
sudo pacman -S libnftnl --noconfirm
sudo pacman -S libnghttp2 --noconfirm
sudo pacman -S libnl --noconfirm
sudo pacman -S libnm --noconfirm
sudo pacman -S libnotify --noconfirm
sudo pacman -S libnsl --noconfirm
sudo pacman -S libogg --noconfirm
sudo pacman -S libomxil-bellagio --noconfirm
sudo pacman -S libp11-kit --noconfirm
sudo pacman -S libpcap --noconfirm
sudo pacman -S libpciaccess --noconfirm
sudo pacman -S libpgm --noconfirm
sudo pacman -S libpipeline --noconfirm
sudo pacman -S libplist --noconfirm
sudo pacman -S libpng --noconfirm
sudo pacman -S libproxy --noconfirm
sudo pacman -S libpsl --noconfirm
sudo pacman -S libpulse --noconfirm
sudo pacman -S libqaccessibilityclient --noconfirm
sudo pacman -S libqalculate --noconfirm
sudo pacman -S libqmi --noconfirm
sudo pacman -S libqrtr-glib --noconfirm
sudo pacman -S libraw --noconfirm
sudo pacman -S libraw1394 --noconfirm
sudo pacman -S librsvg --noconfirm
sudo pacman -S libsamplerate --noconfirm
sudo pacman -S libsasl --noconfirm
sudo pacman -S libseccomp --noconfirm
sudo pacman -S libsecret --noconfirm
sudo pacman -S libsigc++ --noconfirm
sudo pacman -S libsm --noconfirm
sudo pacman -S libsndfile --noconfirm
sudo pacman -S libsodium --noconfirm
sudo pacman -S libsoup --noconfirm
sudo pacman -S libsoup3 --noconfirm
sudo pacman -S libsoxr --noconfirm
sudo pacman -S libssh --noconfirm
sudo pacman -S libssh2 --noconfirm
sudo pacman -S libstemmer --noconfirm
sudo pacman -S libsysprof-capture --noconfirm
sudo pacman -S libtasn1 --noconfirm
sudo pacman -S libteam --noconfirm
sudo pacman -S libthai --noconfirm
sudo pacman -S libtheora --noconfirm
sudo pacman -S libtiff --noconfirm
sudo pacman -S libtirpc --noconfirm
sudo pacman -S libtommath --noconfirm
sudo pacman -S libtool --noconfirm
sudo pacman -S libtraceevent --noconfirm
sudo pacman -S libtracefs --noconfirm
sudo pacman -S libunistring --noconfirm
sudo pacman -S libunwind --noconfirm
sudo pacman -S liburcu --noconfirm
sudo pacman -S libusb --noconfirm
sudo pacman -S libusbmuxd --noconfirm
sudo pacman -S libutempter --noconfirm
sudo pacman -S libva --noconfirm
sudo pacman -S libva-intel-driver --noconfirm
sudo pacman -S libva-mesa-driver --noconfirm
sudo pacman -S libvdpau --noconfirm
sudo pacman -S libvisual --noconfirm
sudo pacman -S libvorbis --noconfirm
sudo pacman -S libvpx --noconfirm
sudo pacman -S libwacom --noconfirm
sudo pacman -S libwebp --noconfirm
sudo pacman -S libx11 --noconfirm
sudo pacman -S libxau --noconfirm
sudo pacman -S libxaw --noconfirm
sudo pacman -S libxcb --noconfirm
sudo pacman -S libxcomposite --noconfirm
sudo pacman -S libxcrypt --noconfirm
sudo pacman -S libxcursor --noconfirm
sudo pacman -S libxcvt --noconfirm
sudo pacman -S libxdamage --noconfirm
sudo pacman -S libxdmcp --noconfirm
sudo pacman -S libxext --noconfirm
sudo pacman -S libxfixes --noconfirm
sudo pacman -S libxfont2 --noconfirm
sudo pacman -S libxft --noconfirm
sudo pacman -S libxi --noconfirm
sudo pacman -S libxinerama --noconfirm
sudo pacman -S libxkbcommon --noconfirm
sudo pacman -S libxkbcommon-x11 --noconfirm
sudo pacman -S libxkbfile --noconfirm
sudo pacman -S libxml2 --noconfirm
sudo pacman -S libxmlb --noconfirm
sudo pacman -S libxmu --noconfirm
sudo pacman -S libxpm --noconfirm
sudo pacman -S libxrandr --noconfirm
sudo pacman -S libxrender --noconfirm
sudo pacman -S libxres --noconfirm
sudo pacman -S libxshmfence --noconfirm
sudo pacman -S libxslt --noconfirm
sudo pacman -S libxss --noconfirm
sudo pacman -S libxt --noconfirm
sudo pacman -S libxtst --noconfirm
sudo pacman -S libxv --noconfirm
sudo pacman -S libxxf86vm --noconfirm
sudo pacman -S libyaml --noconfirm
sudo pacman -S libzip --noconfirm
sudo pacman -S licenses --noconfirm
sudo pacman -S lilv --noconfirm
sudo pacman -S linux-api-headers --noconfirm
sudo pacman -S linux-firmware-neptune --noconfirm
sudo pacman -S linux-neptune --noconfirm
sudo pacman -S llvm-libs --noconfirm
sudo pacman -S lm_sensors --noconfirm
sudo pacman -S lmdb --noconfirm
sudo pacman -S lsb-release --noconfirm
sudo pacman -S lsof --noconfirm
sudo pacman -S lua --noconfirm
sudo pacman -S luit --noconfirm
sudo pacman -S lv2 --noconfirm
sudo pacman -S lvm2 --noconfirm
sudo pacman -S lz4 --noconfirm
sudo pacman -S lzo --noconfirm
sudo pacman -S make --noconfirm
sudo pacman -S maliit-framework --noconfirm
sudo pacman -S maliit-keyboard --noconfirm
sudo pacman -S man-db --noconfirm
sudo pacman -S mangohud --noconfirm
sudo pacman -S md4c --noconfirm
sudo pacman -S mdadm --noconfirm
sudo pacman -S media-player-info --noconfirm
sudo pacman -S mesa --noconfirm
sudo pacman -S mesa-utils --noconfirm
sudo pacman -S mesa-vdpau --noconfirm
sudo pacman -S minizip --noconfirm
sudo pacman -S mobile-broadband-provider-info --noconfirm
sudo pacman -S modemmanager --noconfirm
sudo pacman -S modemmanager-qt --noconfirm
sudo pacman -S mpfr --noconfirm
sudo pacman -S mtdev --noconfirm
sudo pacman -S nano --noconfirm
sudo pacman -S ncurses --noconfirm
sudo pacman -S ndctl --noconfirm
sudo pacman -S nethogs --noconfirm
sudo pacman -S nettle --noconfirm
sudo pacman -S networkmanager --noconfirm
sudo pacman -S networkmanager-qt --noconfirm
sudo pacman -S noise-suppression-for-voice-git --noconfirm
sudo pacman -S noto-fonts --noconfirm
sudo pacman -S noto-fonts-cjk --noconfirm
sudo pacman -S npth --noconfirm
sudo pacman -S nspr --noconfirm
sudo pacman -S nss --noconfirm
sudo pacman -S ntfs-3g --noconfirm
sudo pacman -S ntp --noconfirm
sudo pacman -S numactl --noconfirm
sudo pacman -S nvme-cli --noconfirm
sudo pacman -S ocl-icd --noconfirm
sudo pacman -S oniguruma --noconfirm
sudo pacman -S openal --noconfirm
sudo pacman -S opencl-mesa --noconfirm
sudo pacman -S opencore-amr --noconfirm
sudo pacman -S openjpeg2 --noconfirm
sudo pacman -S openssh --noconfirm
sudo pacman -S openssl --noconfirm
sudo pacman -S openvpn --noconfirm
sudo pacman -S opus --noconfirm
sudo pacman -S orc --noconfirm
sudo pacman -S ostree --noconfirm
sudo pacman -S p11-kit --noconfirm
sudo pacman -S p7zip --noconfirm
sudo pacman -S pacman --noconfirm
sudo pacman -S pacman-mirrorlist --noconfirm
sudo pacman -S pacman-system-update --noconfirm
sudo pacman -S pam --noconfirm
sudo pacman -S pambase --noconfirm
sudo pacman -S pango --noconfirm
sudo pacman -S pangomm --noconfirm
sudo pacman -S parted --noconfirm
sudo pacman -S partitionmanager --noconfirm
sudo pacman -S patch --noconfirm
sudo pacman -S pavucontrol --noconfirm
sudo pacman -S pciutils --noconfirm
sudo pacman -S pcre --noconfirm
sudo pacman -S pcre2 --noconfirm
sudo pacman -S pcsclite --noconfirm
sudo pacman -S perf --noconfirm
sudo pacman -S perl --noconfirm
sudo pacman -S perl-error --noconfirm
sudo pacman -S perl-mailtools --noconfirm
sudo pacman -S perl-timedate --noconfirm
sudo pacman -S phonon-qt5 --noconfirm
sudo pacman -S phonon-qt5-gstreamer --noconfirm
sudo pacman -S pinentry --noconfirm
sudo pacman -S pipewire --noconfirm
sudo pacman -S pipewire-alsa --noconfirm
sudo pacman -S pipewire-jack --noconfirm
sudo pacman -S pipewire-pulse --noconfirm
sudo pacman -S pixman --noconfirm
sudo pacman -S pkcs11-helper --noconfirm
sudo pacman -S pkgconf --noconfirm
sudo pacman -S plasma-framework --noconfirm
sudo pacman -S plasma-meta --noconfirm
sudo pacman -S plasma-wayland-protocols --noconfirm
sudo pacman -S plasma-wayland-session --noconfirm
sudo pacman -S plymouth --noconfirm
sudo pacman -S polkit --noconfirm
sudo pacman -S polkit-qt5 --noconfirm
sudo pacman -S ponymix --noconfirm
sudo pacman -S poppler --noconfirm
sudo pacman -S poppler-qt5 --noconfirm
sudo pacman -S popt --noconfirm
sudo pacman -S powertop --noconfirm
sudo pacman -S ppp --noconfirm
sudo pacman -S presage --noconfirm
sudo pacman -S prison --noconfirm
sudo pacman -S procps-ng --noconfirm
sudo pacman -S psmisc --noconfirm
sudo pacman -S purpose --noconfirm
sudo pacman -S python --noconfirm
sudo pacman -S python-aiohttp --noconfirm
sudo pacman -S python-aiosignal --noconfirm
sudo pacman -S python-async-timeout --noconfirm
sudo pacman -S python-attrs --noconfirm
sudo pacman -S python-chardet --noconfirm
sudo pacman -S python-charset-normalizer --noconfirm
sudo pacman -S python-click --noconfirm
sudo pacman -S python-crcmod --noconfirm
sudo pacman -S python-dnspython --noconfirm
sudo pacman -S python-evdev --noconfirm
sudo pacman -S python-frozenlist --noconfirm
sudo pacman -S python-gobject --noconfirm
sudo pacman -S python-hid --noconfirm
sudo pacman -S python-idna --noconfirm
sudo pacman -S python-importlib-metadata --noconfirm
sudo pacman -S python-markdown --noconfirm
sudo pacman -S python-multidict --noconfirm
sudo pacman -S python-progressbar --noconfirm
sudo pacman -S python-psutil --noconfirm
sudo pacman -S python-pyaml --noconfirm
sudo pacman -S python-pyenchant --noconfirm
sudo pacman -S python-semantic-version --noconfirm
sudo pacman -S python-six --noconfirm
sudo pacman -S python-systemd --noconfirm
sudo pacman -S python-sysv_ipc --noconfirm
sudo pacman -S python-typing_extensions --noconfirm
sudo pacman -S python-utils --noconfirm
sudo pacman -S python-yaml --noconfirm
sudo pacman -S python-yarl --noconfirm
sudo pacman -S python-zipp --noconfirm
sudo pacman -S pyzy --noconfirm
sudo pacman -S qca-qt5 --noconfirm
sudo pacman -S qqc2-desktop-style --noconfirm
sudo pacman -S qrencode --noconfirm
sudo pacman -S qt5-base --noconfirm
sudo pacman -S qt5-declarative --noconfirm
sudo pacman -S qt5-feedback --noconfirm
sudo pacman -S qt5-graphicaleffects --noconfirm
sudo pacman -S qt5-location --noconfirm
sudo pacman -S qt5-multimedia --noconfirm
sudo pacman -S qt5-quickcontrols --noconfirm
sudo pacman -S qt5-quickcontrols2 --noconfirm
sudo pacman -S qt5-sensors --noconfirm
sudo pacman -S qt5-speech --noconfirm
sudo pacman -S qt5-svg --noconfirm
sudo pacman -S qt5-tools --noconfirm
sudo pacman -S qt5-translations --noconfirm
sudo pacman -S qt5-wayland --noconfirm
sudo pacman -S qt5-webchannel --noconfirm
sudo pacman -S qt5-webengine --noconfirm
sudo pacman -S qt5-x11extras --noconfirm
sudo pacman -S rauc --noconfirm
sudo pacman -S rav1e --noconfirm
sudo pacman -S re2 --noconfirm
sudo pacman -S readline --noconfirm
sudo pacman -S renderdoc-minimal --noconfirm
sudo pacman -S rest --noconfirm
sudo pacman -S ripgrep --noconfirm
sudo pacman -S rsync --noconfirm
sudo pacman -S rtkit --noconfirm
sudo pacman -S rxvt-unicode-terminfo --noconfirm
sudo pacman -S sbc --noconfirm
sudo pacman -S sddm-wayland --noconfirm
sudo pacman -S sdl2 --noconfirm
sudo pacman -S seatd --noconfirm
sudo pacman -S sed --noconfirm
sudo pacman -S serd --noconfirm
sudo pacman -S shadow --noconfirm
sudo pacman -S shared-mime-info --noconfirm
sudo pacman -S signon-kwallet-extension --noconfirm
sudo pacman -S signon-plugin-oauth2 --noconfirm
sudo pacman -S signon-ui --noconfirm
sudo pacman -S signond --noconfirm
sudo pacman -S slang --noconfirm
sudo pacman -S smartmontools --noconfirm
sudo pacman -S smbclient --noconfirm
sudo pacman -S snappy --noconfirm
sudo pacman -S socat --noconfirm
sudo pacman -S solid --noconfirm
sudo pacman -S sonnet --noconfirm
sudo pacman -S sord --noconfirm
sudo pacman -S sound-theme-freedesktop --noconfirm
sudo pacman -S source-highlight --noconfirm
sudo pacman -S spectacle --noconfirm
sudo pacman -S speex --noconfirm
sudo pacman -S speexdsp --noconfirm
sudo pacman -S sqlite --noconfirm
sudo pacman -S squashfs-tools --noconfirm
sudo pacman -S sratom --noconfirm
sudo pacman -S srt --noconfirm
sudo pacman -S sshfs --noconfirm
sudo pacman -S steam-im-modules --noconfirm
sudo pacman -S steam-jupiter-stable --noconfirm
sudo pacman -S steamdeck-kde-presets --noconfirm
sudo pacman -S steamos-atomupd-client-git --noconfirm
sudo pacman -S steamos-customizations-jupiter --noconfirm
sudo pacman -S steamos-devkit-service --noconfirm
sudo pacman -S steamos-efi --noconfirm
sudo pacman -S steamos-netrc --noconfirm
sudo pacman -S strace --noconfirm
sudo pacman -S stressapptest --noconfirm
sudo pacman -S sudo --noconfirm
sudo pacman -S svt-av1 --noconfirm
sudo pacman -S syndication --noconfirm
sudo pacman -S syntax-highlighting --noconfirm
sudo pacman -S sysfsutils --noconfirm
sudo pacman -S systemd --noconfirm
sudo pacman -S systemd-libs --noconfirm
sudo pacman -S systemd-swap --noconfirm
sudo pacman -S systemd-sysvcompat --noconfirm
sudo pacman -S taglib --noconfirm
sudo pacman -S talloc --noconfirm
sudo pacman -S tar --noconfirm
sudo pacman -S tcl --noconfirm
sudo pacman -S tdb --noconfirm
sudo pacman -S tevent --noconfirm
sudo pacman -S texinfo --noconfirm
sudo pacman -S thin-provisioning-tools --noconfirm
sudo pacman -S threadweaver --noconfirm
sudo pacman -S tk --noconfirm
sudo pacman -S trace-cmd --noconfirm
sudo pacman -S tracker3 --noconfirm
sudo pacman -S tree --noconfirm
sudo pacman -S tslib --noconfirm
sudo pacman -S ttf-dejavu --noconfirm
sudo pacman -S ttf-hack --noconfirm
sudo pacman -S ttf-twemoji-default --noconfirm
sudo pacman -S tzdata --noconfirm
sudo pacman -S udisks2 --noconfirm
sudo pacman -S unrar --noconfirm
sudo pacman -S unzip --noconfirm
sudo pacman -S upower --noconfirm
sudo pacman -S usbmuxd --noconfirm
sudo pacman -S usbutils --noconfirm
sudo pacman -S util-linux --noconfirm
sudo pacman -S util-linux-libs --noconfirm
sudo pacman -S v4l-utils --noconfirm
sudo pacman -S vid.stab --noconfirm
sudo pacman -S vim --noconfirm
sudo pacman -S vim-runtime --noconfirm
sudo pacman -S vkmark-git --noconfirm
sudo pacman -S vmaf --noconfirm
sudo pacman -S volume_key --noconfirm
sudo pacman -S vpower --noconfirm
sudo pacman -S vulkan-icd-loader --noconfirm
sudo pacman -S vulkan-radeon --noconfirm
sudo pacman -S vulkan-tools --noconfirm
sudo pacman -S wayland --noconfirm
sudo pacman -S wayland-utils --noconfirm
sudo pacman -S webrtc-audio-processing --noconfirm
sudo pacman -S wget --noconfirm
sudo pacman -S which --noconfirm
sudo pacman -S wireless-regdb --noconfirm
sudo pacman -S wireless_tools --noconfirm
sudo pacman -S wireplumber --noconfirm
sudo pacman -S wpa_supplicant --noconfirm
sudo pacman -S x264 --noconfirm
sudo pacman -S x265 --noconfirm
sudo pacman -S xbindkeys --noconfirm
sudo pacman -S xbitmaps --noconfirm
sudo pacman -S xcb-proto --noconfirm
sudo pacman -S xcb-util --noconfirm
sudo pacman -S xcb-util-cursor --noconfirm
sudo pacman -S xcb-util-errors --noconfirm
sudo pacman -S xcb-util-image --noconfirm
sudo pacman -S xcb-util-keysyms --noconfirm
sudo pacman -S xcb-util-renderutil --noconfirm
sudo pacman -S xcb-util-wm --noconfirm
sudo pacman -S xdg-dbus-proxy --noconfirm
sudo pacman -S xdg-desktop-portal --noconfirm
sudo pacman -S xdg-user-dirs --noconfirm
sudo pacman -S xdg-utils --noconfirm
sudo pacman -S xdotool --noconfirm
sudo pacman -S xf86-input-libinput --noconfirm
sudo pacman -S xf86-video-amdgpu --noconfirm
sudo pacman -S xfsprogs --noconfirm
sudo pacman -S xkeyboard-config --noconfirm
sudo pacman -S xorg-fonts-encodings --noconfirm
sudo pacman -S xorg-server --noconfirm
sudo pacman -S xorg-server-common --noconfirm
sudo pacman -S xorg-setxkbmap --noconfirm
sudo pacman -S xorg-xauth --noconfirm
sudo pacman -S xorg-xdpyinfo --noconfirm
sudo pacman -S xorg-xhost --noconfirm
sudo pacman -S xorg-xkbcomp --noconfirm
sudo pacman -S xorg-xmessage --noconfirm
sudo pacman -S xorg-xprop --noconfirm
sudo pacman -S xorg-xrandr --noconfirm
sudo pacman -S xorg-xrdb --noconfirm
sudo pacman -S xorg-xset --noconfirm
sudo pacman -S xorg-xsetroot --noconfirm
sudo pacman -S xorg-xwayland-jupiter --noconfirm
sudo pacman -S xorg-xwininfo --noconfirm
sudo pacman -S xorgproto --noconfirm
sudo pacman -S xterm --noconfirm
sudo pacman -S xvidcore --noconfirm
sudo pacman -S xxhash --noconfirm
sudo pacman -S xz --noconfirm
sudo pacman -S yay-git --noconfirm
sudo pacman -S zenity-light --noconfirm
sudo pacman -S zeromq --noconfirm
sudo pacman -S zimg --noconfirm
sudo pacman -S zip --noconfirm
sudo pacman -S zlib --noconfirm
sudo pacman -S zsh --noconfirm
sudo pacman -S zstd --noconfirm
sudo pacman -S zxing-cpp --noconfirm
# 复原只读模式
sudo steamos-readonly enable
# 完成提示语
echo "请重新开机完成修改"