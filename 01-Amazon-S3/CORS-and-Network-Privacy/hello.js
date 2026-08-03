function hello() {
    fetch("https://example.execute-api.region.amazonaws.com/prod/hello", {
        method: "POST"
    })
    .then(response => response.text())
    .then(data => console.log(data))
    .catch(error => console.error(error));
}