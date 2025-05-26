routes = [
  { pattern = "/", handler = "Main", action = "index" },
  { pattern = "/login", handler = "Auth", action = "login" },
  { pattern = "/logout", handler = "Auth", action = "logout" },
  { pattern = "/admin", handler = "Admin", action = "index" },
  { pattern = "/api/v1/content", handler = "Api.v1.Content", action = "index", method = "GET" },
  { pattern = "/api/v1/content/:id", handler = "Api.v1.Content", action = "show", method = "GET" },
  { pattern = "/api/v1/content", handler = "Api.v1.Content", action = "create", method = "POST" },
  { pattern = "/api/v1/content/:id", handler = "Api.v1.Content", action = "update", method = "PUT" },
  { pattern = "/api/v1/content/:id", handler = "Api.v1.Content", action = "delete", method = "DELETE" }
];