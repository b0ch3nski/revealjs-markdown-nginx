# revealjs-markdown-nginx
Reveal.js with Markdown support hosted by Nginx on Docker.

## Usage
Start website with example presentation:
```bash
docker run -d --name revealjs -p 8080:80 b0ch3nski/revealjs-markdown-nginx
```
You can examine the example by looking at [index.md](index.md) file.
For more detailed information, see [Markdown section](https://github.com/hakimel/reveal.js/#markdown) of `reveal.js`
documentation.

To start container with your presentation, mount it using volume:
```
-v "${PWD}/slides.md:/usr/share/nginx/html/index.md":ro
```
**Note:** make sure that your presentation has **755** permissions - otherwise, `nginx` will fail with
*permission denied* error.
