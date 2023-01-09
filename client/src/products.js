import React, {useState, useEffect} from "react"

function Products() {
    const [products, setProducts] = useState([])

    useEffect(() => {
        fetch("/products")
          .then(res => res.json())
          .then(data => {
            setProducts(data)
          })
      }, [])

      return(
        <div>
            <p>{products.name}</p>
            <p>{products.category}</p>
            <p>{products.bprice}</p>
            <p>{products.sprice}</p>
            <p>{products.expiry}</p>
            <p>{products.quantity}</p>
            <p>{products.size}</p>
        </div>
      )
    
}

export default Products;