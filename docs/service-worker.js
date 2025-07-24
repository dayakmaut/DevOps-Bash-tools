self.addEventListener("install", e => {
  e.waitUntil(
    caches.open("softsec-cache").then(cache => {
      return cache.addAll([
        "./index.html",
        "./upload_viewer.html",
        "./manifest.json",
        "./icon512.png"
      ]);
    })
  );
});

self.addEventListener("fetch", e => {
  e.respondWith(
    caches.match(e.request).then(response => response || fetch(e.request))
  );
});
