function turnOn() {
  fetch('http://89.216.155.62:9000/on')
}

function turnOff() {
  fetch('http://89.216.155.62:9000/off')
}

const Page = ({ stars }) =>
  <div>
    <button onClick={turnOn}>Upali</button>
    <br />
    <button onClick={turnOff}>Ugasi</button>
    Next stars: {stars}
  </div>

Page.getInitialProps = async ({ req }) => {
  return { stars: 8 }
}

export default Page
