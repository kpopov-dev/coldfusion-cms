component persistent="true" table="users" {
  property name="id" fieldtype="id" generator="identity";
  property name="username";
  property name="passwordHash";
}