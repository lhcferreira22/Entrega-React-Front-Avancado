import Rotas from './rotas';
import { BrowserRouter } from 'react-router-dom';
import { Container, Card } from 'react-bootstrap';
import './App.css';
import { lazy, Suspense } from 'react';

const Menu = lazy(() => import('./code-splitting/Menu/Menu.js'));
const Rodape = lazy(() => import('./code-splitting/Footer/Rodape.js'));


function App() {
  return (
    <BrowserRouter>
      <div className="App">
        <header>
          <Suspense fallback={<p>Carregando...</p>}>
            <Menu />
          </Suspense>
        </header>
        <main>
          <Container>
            <Rotas />
          </Container>
        </main>
        <Suspense fallback={<p>Carregando...</p>}>
          <Card.Footer className="bg-danger text-center font-weight:bolder mt-5">
            <Rodape />
          </Card.Footer>
        </Suspense>

      </div>
    </BrowserRouter >

  );
}

export default App;
