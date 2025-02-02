import './App.css'

function App() {

  return (
    <>
      <h1>Welcome to my project</h1>
      <h2>The environment vairables are</h2>
      <ol>
        <li>{import.meta.env.VITE_ENV_VAR1}</li>
        <li>{import.meta.env.VITE_ENV_VAR2}</li>
        <li>{import.meta.env.VITE_ENV_VAR3}</li>
      </ol>
    </>
  )
}

export default App
