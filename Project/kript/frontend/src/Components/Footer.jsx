import React from 'react'
 import logo from "../images/logo.png"
export const Footer = () => {
  return (
    <div className='w-full flex md:justify-center justify-between items-center flex-col p-4 gradient-bg-footer'>
      <div className='w-full flex sm:flex-row justify-between items-center my-4'>
        <div className='flex flex-[0.5] justify-center items-center'> 
          <img src={logo} alt="logo" className='w-32' />
        </div>
        <div className='flex flex-1 justify-evenly items-center flex-wrap mt-5 sm:mt-0'>
          <a  className='text-white text-base text-clip mx-2 cursor-pointer'>Market</a>
          <a className='text-white text-base text-clip mx-2 cursor-pointer'>Exchange</a>
          <a  className='text-white text-base text-clip mx-2 cursor-pointer'>Tutorials</a>
          <a className='text-white text-base text-clip mx-2 cursor-pointer'>Wallets</a>
        </div>
      </div>
      <div className='flex justify-center items-center flex-col mt-5'>
        <p className='text-white text-sm text-center'>Come Join us</p>
        <p className='text-white text-sm text-center'>aky8507049610@gmail.com</p>
      </div>
      <div className='sm:w-[90%] w-full h-[0.25px] bg-gray-400 mt-5'></div>
      <div className='sm:w-[90%] w-full flex justify-between items-center mt-3'>
        

      <p className='text-white text-sm text-center'>@AbhiArya 2022</p>
      <p className='text-white text-sm text-center'>All rights reserved</p>
      </div>
    </div> 
  )
}
