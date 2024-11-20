# Audiowmark

- https://uplex.de/audiowmark

- [https://uplex.de/audiowmark/README](https://uplex.de/audiowmark/README.html)

<br>
<br>

# Build Note

If planning to use Docker and pulling from stable release repos, will need to revert autogen script back to configure.

```dockerfile
# RUN ./autogen.sh
RUN ./configure
```