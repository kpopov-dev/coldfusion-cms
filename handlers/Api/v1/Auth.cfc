component {
  function login(event, rc, prc) {
    var user = entityLoad("User", { username = rc.username })[1];
    if (user.passwordHash EQ hash(rc.password, "SHA-256")) {
      var token = createJWT(user);
      event.renderData(type = "json", data = { token: token });
    } else {
      event.renderData(type = "json", data = { error = "Invalid credentials" }, statusCode = 401);
    }
  }

  private function createJWT(user) {
    return jwtService.encode({ id: user.id, username: user.username });
  }
}