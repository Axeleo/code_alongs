
function home(req, res) {
    let user = 'slackers'
    res.render('index')
}

function movies(req, res) {
    const title = req.query.title
    const url = `http://omdbapi.com/?t=${ title }&apikey=2f6435d9`
    // ES6 url: url >>> url
    axios.get(url)
        .then(omdbRes => {
            res.render('show', omdbRes.data)
        })
    // r({ url, json: true }, (error, response, body) => {
    //   res.render('show', body)
    // })
}   



module.exports = {
    home,
    movies
}