import React, {useContext} from 'react'
import { TransactionContext } from "../Context/TransactionContext";
import { shortenAddress } from "../utils/shortenAddress";
import useFetch from "../Hooks/useFetch"

const TransactionCard = ({addressTo,addressFrom, timestamp, message, keyword, amount,})=>{
  const gifUrl = useFetch({keyword})
  return (
    <div className='bg-[#181918] m-4 flex flex-1 
    2xl:min-w-[450px]
    2xl:max-w-[500px]
    sm:min-w-[270px]
    sm:max-w-[300px]
    flex-col p-3
    rounded-md
    hover:shadow-2xl    
      '>
        <div className='flex flex-col items-center w-full mt-3'>
          <div className=' w-full mb-6 p-2 font-bold'>
            <a href={`https://rinkeby.etherscan.io/address/${addressFrom}`} target="_blank" rel='noopener noreferrer'>
              <p className='text-white text-base'>From: {shortenAddress(addressFrom)}</p>
              <p className='text-white text-base'>To: {shortenAddress(addressTo)}</p>
            </a>
            <p className='text-white text-base'>Amount: {amount}</p>
            {
              message && (<>
              <br />
              <p className='text-white text-base'>Message: {message}</p>
              </>)
            }
          </div>
            <img src={gifUrl}
            alt='gif'
            className='w-full h-64, 2xl:h-96 rounded-md shadow-lg object-contain'
            
            />
            <div className='bg-black p-3 px-5 w-max rounded-3xl -mt-5 shadow-2xl'>
              <p className='text-white font-bold'>{timestamp}</p>
            </div> 
        </div>
      </div>
  )

}

export const Transactions = () => {
  const {currentAccount, transactions} = useContext(TransactionContext)
  return (
    <div className='flex w-full justify-center items-center 2xl:px-20 gradient-bg-transactions'>
      <div className='flex flex-col md:p-12 py-12 px-4'>
        {
          currentAccount ? ( <h3 className='text-white text-3xl text-center my-3'>Latest Transactions</h3> ):(
            <h3 className='text-white text-3xl text-center my-3'>Connect your account to see the latest transactions</h3>
          )
        }
        <div className='flex flex-wrap justify-center items-center mt-10'>
          {
            transactions.reverse().map((Transaction, i)=>(
              <TransactionCard key={i} {...Transaction}/>
            ))
          }
        </div>
      </div>
    </div>
  )
}
