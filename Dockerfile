FROM odoo:20.0
USER root
COPY ventas_unicah /mnt/extra-addons/ventas_unicah
COPY start.sh /start.sh
RUN chmod +x /start.sh && chown -R odoo /mnt/extra-addons
USER odoo
ENTRYPOINT []
CMD ["/start.sh"]