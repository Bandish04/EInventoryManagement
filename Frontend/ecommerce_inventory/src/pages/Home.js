import { getUser } from '../utils/Helper';

const Home = () => {
  const user = getUser();
  return <h1>Home Page, Hi {user?.username || 'Guest'}</h1>;
};

export default Home;