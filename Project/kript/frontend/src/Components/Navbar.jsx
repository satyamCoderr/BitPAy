import React from "react";
import { useState } from "react";
import logo from "./../images/logo.png";
import { AiOutlineClose } from "react-icons/ai";
import { HiMenuAlt4 } from "react-icons/hi";
const ListItem = ({ classItem, title }) => {
  return <li className={`m-4 cursor-pointer ${classItem}`}>{title}</li>;
};
export const Navbar = () => {
  const [toggleMenu, setToggleMenu] = useState(false);
  return (
    <nav className="w-full flex md:justify-center justify-between items-center p-4">
      <div className="md:flex-[0.5] flex-initial justify-center items-center">
        <img src={logo} className="w-32 cursor-pointer" alt="logo" />
      </div>
      <ul className="text-white md:flex  hidden list-none flex-row justify-between items-center flex-initial">
        {["Market", "Exchange", "Tutorials", "Wallets"].map((item, idx) => (
          <ListItem key={idx} title={item} />
        ))}
        <li className="bg-[#2952e3] py-2 px-7 mx-4 rounded-full cursor-pointer hover:bg-[#2546bd]">
          Login
        </li>
      </ul>
      <div className="flex relative">
        {toggleMenu ? (
          <AiOutlineClose
            fontSize={28}
            className="text-white md:hidden cursor-pointer"
            onClick={() => setToggleMenu(false)}
          />
        ) : (
          <HiMenuAlt4
            fontSize={28}
            className="text-white md:hidden cursor-pointer"
            onClick={() => setToggleMenu(true)}
          />
        )}
        {toggleMenu && (
          <ul className="fixed top-0 -right-2 p-3 w-[70vw] h-screen shadow-2xl md:hidden list-none flex flex-col justify-start items-end rounded-md blue-glassmorphism text-white animate-slide-in">
            <li className="text-xl w-full my-2">
              <AiOutlineClose fontSize={28} onClick={() => setToggleMenu(false)} />
            </li>
            
            {["Market", "Exchange", "Tutorials", "Wallets"].map((item, idx) => (
              <ListItem key={idx} title={item}  classItem="my-2 text=lg"/>
            ))}
          </ul>
        )}
      </div>
    </nav>
  );
};
