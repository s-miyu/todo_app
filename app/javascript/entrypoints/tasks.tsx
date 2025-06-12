import React from "react";
import ReactDOM from "react-dom/client";
import TaskIndex from "../components/taskIndex";

const root = document.getElementById("task-root");

if (root) {
  ReactDOM.createRoot(root).render(<TaskIndex />);
}
