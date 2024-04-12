import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';


function StockList() {
  const [stocks, setStocks] = useState([]);
  const navigate = useNavigate();

  useEffect(() => {
    fetchStocks(); // Initial fetch of stocks
  }, []);

  const fetchStocks = async () => {
    try {
      const response = await fetch('http://localhost:3004/api/stockinfo');
      const data = await response.json();
      setStocks(data);
    } catch (err) {
      console.error("Error fetching stocks:", err);
    }
  };

  const handleDeleteStock = async (stockId) => {
    try {
      await fetch(`http://localhost:3004/api/stockinfo/${stockId}`, { method: 'DELETE' });
      fetchStocks(); // Re-fetch stocks after deletion
    } catch (err) {
      console.error("Error deleting stock:", err);
    }
  };

  const handleEditClick = (stockId) => {
    navigate(`/edit-stock/${stockId}`);
  };


  const style = {
    homeContainer: {
      backgroundImage: "url('/stock1.jpg')", // Replace 'stock1.jpg' with the actual path to your image
      backgroundSize: 'cover',
      backgroundPosition: 'center',
      height: '100vh', // Adjust the height as needed
      display: 'flex',
      flexDirection: 'column',
      justifyContent: 'center',
      alignItems: 'center',
      color: 'white', // Set text color to contrast with the background
      textAlign: 'center',
    },
    heading: {
      fontSize: '3rem', // Adjust font size as needed
    },
  };

  return (
    <div style={style.homeContainer}>
    <div>
      <h1>Stock Information</h1>
      {/* <AddStockForm onStockAdded={fetchStocks} /> */}
      <ul>
        {stocks.map(stock => (
          <li key={stock.StockID}>
            {stock.Name}
            <button onClick={() => handleEditClick(stock.StockID)}>Edit</button>
            <button onClick={() => handleDeleteStock(stock.StockID)}>Delete</button>
          </li>
        ))}
      </ul>
    </div>
    </div>
  );
}

export default StockList;
