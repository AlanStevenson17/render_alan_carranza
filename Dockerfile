FROM odoo:20.0
USER root
COPY custom_addons /mnt/extra-addons
COPY start.sh /start.sh
RUN chmod +x /start.sh && chown -R odoo /mnt/extra-addons
USER odoo
ENTRYPOINT []
CMD ["/start.sh"]