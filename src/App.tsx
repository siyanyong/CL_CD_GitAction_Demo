import React from "react";
import logo from "./logo.svg";
import "./App.css";

function App() {
  const product = {
    name: "Super Sneakers",
    price: 79.99,
    description: "Comfy, cool, and perfect for everyday adventures.",
  };
  return (
    <div className="App">
      <main
        style={{
          fontFamily: "sans-serif",
          maxWidth: 720,
          margin: "40px auto",
          padding: "0 16px",
        }}
      >
        <h1>{product.name}</h1>
        <img
          src="https://via.placeholder.com/640x360?text=Product+Image"
          alt={product.name}
          style={{ width: "100%", borderRadius: 8 }}
        />
        <p style={{ fontSize: 18 }}>{product.description}</p>
        <p style={{ fontWeight: "bold", fontSize: 24 }}>
          ${product.price.toFixed(2)}
        </p>
        <button
          style={{ padding: "12px 20px", fontSize: 16, cursor: "pointer" }}
        >
          Add to Cart
        </button>
      </main>
    </div>
  );
}

export default App;
