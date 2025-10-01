import React from "react";
import { render, screen } from "@testing-library/react";
import App from "./App";

test("shows the product name", () => {
  render(<App />);
  expect(screen.getByText(/Super Sneakers/i)).toBeInTheDocument();
});
test("shows the Add to Cart button", () => {
  render(<App />);
  expect(
    screen.getByRole("button", { name: /add to cart/i })
  ).toBeInTheDocument();
});
