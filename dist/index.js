"use strict";

var _app = _interopRequireDefault(require("./app.js"));
function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }
_app["default"].listen(_app["default"].get("port"), function () {
  console.log("Backend - Ejecutandose en el puerto: http://localhost:".concat(_app["default"].get("port")));
});