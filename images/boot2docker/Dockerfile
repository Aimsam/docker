FROM boot2docker/boot2docker:latest

RUN rm $ROOTFS/etc/rc.d/automount-shares && \
    sed -i "s/\/etc\/rc.d\/automount-shares//g" $ROOTFS/opt/bootscript.sh && \
    echo "/usr/local/etc/init.d/nfs-client start" >> $ROOTFS/opt/bootscript.sh

RUN mkdir $ROOTFS/Users && \
    echo "10.0.2.2:/Users /Users  nfs     rw,async,noatime,rsize=32768,wsize=32768,proto=tcp      0       0" >> $ROOTFS/etc/fstab

RUN /make_iso.sh
CMD cat boot2docker.iso