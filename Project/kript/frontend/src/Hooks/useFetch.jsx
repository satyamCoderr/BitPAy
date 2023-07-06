import { useEffect } from "react";
import { useState } from "react"

const API_KEY = process.env.REACT_APP_GIPHY
const useFetch = ({keyword})=>{
    const [gifUrl , setGifUrl] = useState("");
    const fetchGifs =  async ()=>{
        
        try{
            const response = await fetch(`https://api.giphy.com/v1/gifs/search?api_key=${API_KEY}&q=${keyword}&limit=1`)
            const {data} = await response.json();
            if(data.length==0){
                const response = await fetch(`https://api.giphy.com/v1/gifs/random?api_key=${API_KEY}&tag=blockchain&rating=g`)
                const data2= await response.json();
                setGifUrl(data2.data?.images?.downsized_medium?.url)
            }
            else{
                setGifUrl(data[0]?.images?.downsized_medium?.url)
            }
        }catch(e){
            setGifUrl("https://media1.giphy.com/media/26FKVTIlYmYwngQy4/200w_s.gif?cid=e72f7d9811f5bf76bacc8936eab97734a66fcb2659e0b172&rid=200w_s.gif&ct=g");
        }
    }
    useEffect(()=>{
        if(keyword){
            fetchGifs();
        }
    }, [keyword])
    return gifUrl;
}

export default useFetch;