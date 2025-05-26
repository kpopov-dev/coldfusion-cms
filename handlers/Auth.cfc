component {
  function login(event, rc, prc) {
    var user = entityLoad("User", { username = rc.username })[1];
    if (user.passwordHash EQ hash(rc.password, "SHA-256")) {
      session.userID = user.id;
      setNextEvent("/admin");
    } else {
      event.setView("login");
    }
  }
  function logout(event, rc, prc) {
    structClear(session);
    setNextEvent("/login");
  }
}