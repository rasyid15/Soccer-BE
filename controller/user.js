const { response } = require("../utils/wrapper")
const login = {
    username: "admin",
    password: "123"
}
const token = require("../utils/token")
const TOKEN = process.env.TOKEN || token.TOKEN

exports.login = (req, res) => {
    try {
        const payload = {
            username: req.body.username || "",
            password: req.body.password || ""
        }

        if (payload.username === "" || payload.password === "")
            return response(res, "password atau username tidak boleh kosong!!!", null, 409)

        console.log(login, payload);
        if (payload.username !== login.username || payload.password !== login.password)
            return response(res, "username atau password salah!!!", null, 404)

        res.cookie("token", TOKEN, {
            httpOnly: true,
            maxAge: 7 * 24 * 60 * 60 * 1000
        })
        return response(res, "Sukses Login!", { role: "admin" }, 200)
    } catch (error) {
        return response(res, error.message, error, 400)
    }
}

exports.logout = (req, res) => {
    try {
        res.clearCookie("token")
        return response(res, "Sukses Logout", null, 200)
    } catch (error) {
        return response(res, error.message, error, 400)
    }
}