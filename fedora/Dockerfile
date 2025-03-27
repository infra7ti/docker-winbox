# Dockerfile

ARG OS_VERSION_ID=latest
FROM fedora:${OS_VERSION_ID:-latest}

WORKDIR /app
COPY sources winbox.in .

RUN \
  dnf -y install --refresh \
    "bsdtar" \
    "libbrotlicommon.so.1()(64bit)" \
    "libbrotlidec.so.1()(64bit)" \
    "libbz2.so.1()(64bit)" \
    "libc.so.6()(64bit)" \
    "libdl.so.2()(64bit)" \
    "libEGL.so.1()(64bit)" \
    "libfontconfig.so.1()(64bit)" \
    "libfreetype.so.6()(64bit)" \
    "libGLdispatch.so.0()(64bit)" \
    "libglib-2.0.so.0()(64bit)" \
    "libGL.so.1()(64bit)" \
    "libGLX.so.0()(64bit)" \
    "libgraphite2.so.3()(64bit)" \
    "libharfbuzz.so.0()(64bit)" \
    "liblzma.so.5()(64bit)" \
    "libm.so.6()(64bit)" \
    "libpcre2-8.so.0()(64bit)" \
    "libpng16.so.16()(64bit)" \
    "libpthread.so.0()(64bit)" \
    "librt.so.1()(64bit)" \
    "libX11.so.6()(64bit)" \
    "libX11-xcb.so.1()(64bit)" \
    "libXau.so.6()(64bit)" \
    "libxcb-cursor.so.0()(64bit)" \
    "libxcb-glx.so.0()(64bit)" \
    "libxcb-icccm.so.4()(64bit)" \
    "libxcb-image.so.0()(64bit)" \
    "libxcb-keysyms.so.1()(64bit)" \
    "libxcb-randr.so.0()(64bit)" \
    "libxcb-render.so.0()(64bit)" \
    "libxcb-render-util.so.0()(64bit)" \
    "libxcb-shape.so.0()(64bit)" \
    "libxcb-shm.so.0()(64bit)" \
    "libxcb.so.1()(64bit)" \
    "libxcb-sync.so.1()(64bit)" \
    "libxcb-util.so.1()(64bit)" \
    "libxcb-xfixes.so.0()(64bit)" \
    "libxcb-xkb.so.1()(64bit)" \
    "libXext.so.6()(64bit)" \
    "libxkbcommon.so.0()(64bit)" \
    "libxkbcommon-x11.so.0()(64bit)" \
    "libxml2.so.2()(64bit)" \
    "libz.so.1()(64bit)" \
  && mv winbox.in winbox \
  && mkdir -p /app \
  && curl -sSL -o - $(head -1 sources) >> winbox \
  && chmod +x winbox \
  && rm -f sources

ENV LC_ALL=C.UTF-8

CMD ["/app/winbox"]
