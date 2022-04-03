module.exports = {
    secret: "lucknowPcsonlineExam",
    expiresIn: 120, // for 2 min
    notBefore: 2, // for 2 second By default notBefore/expiresIn in second
    audience: "site-users",
    issuer: "on line exam",
    algorithm: "HS256"

}