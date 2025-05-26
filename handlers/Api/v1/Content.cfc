component {
  function index(event, rc, prc) {
    event.renderData(type = "json", data = entityLoad("Content"));
  }
  function show(event, rc, prc) {
    var item = entityLoadByPK("Content", rc.id);
    if (!item) return event.renderData(type="json", data={ error: "Not found" }, statusCode=404);
    event.renderData(type = "json", data = item);
  }
  function create(event, rc, prc) {
    var newContent = entityNew("Content");
    newContent.setTitle(rc.title);
    newContent.setBody(rc.body);
    newContent.setAuthor("admin");
    newContent.setCreatedDate(now());
    entitySave(newContent);
    event.renderData(type="json", data={ success=true, id=newContent.getId() });
  }
  function update(event, rc, prc) {
    var item = entityLoadByPK("Content", rc.id);
    if (!item) return event.renderData(type="json", data={ error="Not found" }, statusCode=404);
    item.setTitle(rc.title ?: item.getTitle());
    item.setBody(rc.body ?: item.getBody());
    item.setUpdatedDate(now());
    entitySave(item);
    event.renderData(type="json", data={ success=true });
  }
  function delete(event, rc, prc) {
    var item = entityLoadByPK("Content", rc.id);
    if (item) entityDelete(item);
    event.renderData(type="json", data={ success=true });
  }
}