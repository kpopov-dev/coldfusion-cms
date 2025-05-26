component {
  function index(event, rc, prc) {
    if (!structKeyExists(session, "userID")) setNextEvent("/login");
    prc.contents = entityLoad("Content");
    event.setView("admin/index");
  }
}