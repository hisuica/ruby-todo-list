import React from "react";
import { render } from "react-dom";
import Provider from "../components/Provider";
import Schedule from "../components/Schedule";

document.addEventListener("DOMContentLoaded", () => {
  render(
    <Provider>
      <Schedule />
    </Provider>,
    document.querySelector("#root")
  );
});
