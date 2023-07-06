import React from 'react'

export const Loader = () => {
  return (
    <div className = "flex justify-center items-center py-3">
      <div className="animate-spin rounded-full h-10 w-10 border-b-4 border-red-700"/>
    </div>
  )
}
