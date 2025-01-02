import { useState, useEffect } from "react";

const useFetch = (fetchFunction) => {
  const [data, setData] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchData = async () => {
      setLoading(true);
      const result = await fetchFunction();
      setData(result);
      setLoading(false);
    };
    fetchData();
  }, [fetchFunction]);

  return { data, loading };
};

export default useFetch;
