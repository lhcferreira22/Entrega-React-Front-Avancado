import { Switch, Route } from 'react-router-dom';
import Produtos from './Pages/Produtos.js';
import Home from './Pages/Home.js';
import Lojas from './Pages/Lojas.js';
import Contato from './Pages/Contato.js';

export default function Rotas(){
    return(
        <Switch>
            <Route exact path='/Home' component={ Home }></Route>
            <Route exact path='/Produtos' component={ Produtos }></Route>
            <Route exact path='/Lojas' component={ Lojas}></Route>
            <Route exact path='/Contato' component={ Contato }></Route>
        </Switch>
    )
}


