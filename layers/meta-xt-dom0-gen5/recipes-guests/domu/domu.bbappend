FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:remove = " file://domu-vdevices.cfg"


CFG_FILE="${D}${sysconfdir}/xen/domu.cfg"

do_install:append() {
    echo "" >> ${CFG_FILE}
    echo "# Initial memory allocation (MB)" >> ${CFG_FILE}
    if [ "$ENABLE_FWK" = "1" ]; then
        echo "memory = 7168" >> ${CFG_FILE}
    else
        echo "memory = 8192" >> ${CFG_FILE}
    fi
}
