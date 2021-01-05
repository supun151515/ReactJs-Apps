import './App.css';
import './appStyles.css';
import ClickCounter from './components/ClickCounter';
import FocusInput from './components/FocusInput';
import FRParent from './components/FRParent';
import HoverCounter from './components/HoverCounter';
import PureParentComp from './components/PureParentComp';
import RefsDemo from './components/RefsDemo';
import WithCounterClickChild  from './components/WithCounterClickChild';
function App() {
  return (
    <div className="App">
    <ClickCounter />
    <HoverCounter />
    <WithCounterClickChild />
    </div>
  );
}

export default App;

