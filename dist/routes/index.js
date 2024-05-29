"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;
var _express = require("express");
var _routesFactura = _interopRequireDefault(require("./routes.factura.js"));
function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }
var ruta = (0, _express.Router)();
ruta.use("/api", _routesFactura["default"]);
var _default = exports["default"] = ruta;