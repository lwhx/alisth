FROM xhofe/alist:latest

VOLUME /opt/alist/data

EXPOSE 5244

CMD ["python", "app.py"]

HEALTHCHECK CMD curl --fail http://localhost:5244/health || exit 1
