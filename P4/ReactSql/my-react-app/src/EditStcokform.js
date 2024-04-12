import React, { useState, useEffect } from 'react';

function EditStock({ stock, onUpdate }) {
  const [name, setName] = useState('');
  const [description, setDescription] = useState('');

  useEffect(() => {
    if (stock) {
      setName(stock.name || '');
      setDescription(stock.description || '');
    }
  }, [stock]);

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const response = await fetch(`http://localhost:3004/api/stockinfo/${stock.StockID}`, {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ name, description }),
      });

      if (response.ok) {
        alert('Stock updated successfully');
        onUpdate(); // Refresh stock list
      } else {
        const error = await response.json();
        alert(`Failed to update stock: ${error.message}`);
      }
    } catch (error) {
      alert(`Failed to update stock: ${error.toString()}`);
    }
  };

  return (
    <form onSubmit={handleSubmit}>
      <input
        type="text"
        value={name}
        onChange={(e) => setName(e.target.value)}
        placeholder="Stock Name"
        required
      />
      <input
        type="text"
        value={description}
        onChange={(e) => setDescription(e.target.value)}
        placeholder="Description"
        required
      />
      <button type="submit">Update Stock</button>
    </form>
  );
}

export default EditStock;
