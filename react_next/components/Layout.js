import Head from 'next/head';
import Navbar from '../components/Navbar';
const Layout = (props) => (
    <div>
        <Head>
            <title>BitxPrice</title>
 
        </Head>
        <Navbar />
        <div className="container">
        {props.children}
        </div>
    </div>
);

export default Layout;