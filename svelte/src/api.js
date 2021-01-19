const base = "localhost:8000";
const protocol = "http";

async function send({ method, path, data }) {
  const fetch = window.fetch;
  const opts = { method, headers: {} };

  if (data) {
    opts.headers['Content-Type'] = 'application/json';
    opts.body = JSON.stringify(data);
  }
  let url = `${protocol}://${base}/${path}`;
  return await fetch(url, opts)
    .then(r => r.text())
    .then(json => {
      try {
        return JSON.parse(json);
      } catch (err) {
        console.log(json);
        return json;
      }
    })
    .catch(e => console.log(`[${e}]: ${url} with ${JSON.stringify(opts)} failed`));
}

export function get(path) {
  return send({ method: 'GET', path });
}

export function del(path) {
  return send({ method: 'DELETE', path });
}

export function post(path, data) {
  return send({ method: 'POST', path, data });
}

export function put(path, data) {
  return send({ method: 'PUT', path, data });
}

export function patch(path, data) {
  return send({ method: 'PATCH', path, data });
}
