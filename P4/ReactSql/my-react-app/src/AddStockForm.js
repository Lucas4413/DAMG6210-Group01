import React, { useState } from 'react';

function AddStockForm({ onStockAdded }) {
  const [id, setId] = useState('');
  const [name, setName] = useState('');
  const [description, setDescription] = useState('');

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const response = await fetch('http://localhost:3004/api/stockinfo', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ stockId: parseInt(id, 10), name, description }),
      });
  
      console.log('Response from server:', response);
  
      if (response.ok) {
        alert('Stock added successfully');
        onStockAdded(); // Refresh stock list
        setId('');
        setName('');
        setDescription('');
      } else {
        const error = await response.json();
        alert(`Failed to add stock: ${error.message}`);
      }
    } catch (error) {
      alert(`Failed to add stock: ${error.toString()}`);
    }
  };
  

  return (
    <form onSubmit={handleSubmit}>
      <input
        type="number"
        value={id}
        onChange={(e) => setId(e.target.value)}
        placeholder="Stock ID (numeric)"
        required
      />
      <input
        type="text"
        value={name}
        onChange={(e) => setName(e.target.value)}
        placeholder="Stock Name"
        required
      />
      <textarea
        value={description}
        onChange={(e) => setDescription(e.target.value)}
        placeholder="Stock Description"
        required
      />
      <button type="submit">Add Stock</button>
    </form>
  );
}

export default AddStockForm;
