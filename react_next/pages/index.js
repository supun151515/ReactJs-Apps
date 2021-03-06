import Layout from '../components/Layout';
import fetch from 'isomorphic-unfetch';
import Prices from '../components/Prices';
const Index = (props) => (
    <Layout>
    <div>
        <h1>Hello Next JS new</h1>
        <p>Check current bitcoin rate</p>
       <Prices bpi={props.bpi}></Prices>
    </div>
    </Layout>
);

Index.getInitialProps = async function() {
    const res = await fetch('https://api.coindesk.com/v1/bpi/currentprice.json');
    const data = await res.json();
    const res1 = await fetch('https://sinergy.lk/test/test.php');
    const data1 = await res1.json();
    console.log(data1);
    return (
        {
        bpi: data.bpi
    })
}


export default Index;