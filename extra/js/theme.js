// Default to system preference
if (window.matchMedia('(prefers-color-scheme: dark)').matches) {
  document.body.classList.add('dark');
  var btn = document.getElementById('theme-toggle');
  if (btn) btn.textContent = '\u2600';
}

function toggleDark() {
  document.body.classList.toggle('dark');
  document.getElementById('theme-toggle').textContent =
    document.body.classList.contains('dark') ? '\u2600' : '\u263E';
}
