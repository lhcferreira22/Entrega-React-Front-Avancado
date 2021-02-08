import { Navbar, Nav } from 'react-bootstrap';
import { Link, withRouter } from 'react-router-dom';
import './Menu.css';

function BaseMenu(props){
    const { location } = props
    return(
    <Navbar className="navbar-dark" bg="danger" expand="lg" fixed="top">
        <Navbar.Brand>
            FullStackEletro
        </Navbar.Brand>
        <Navbar.Toggle aria-controls="Item-menu" />
        <Navbar.Collapse id="Item-menu">
            <Nav activeKey={location.pathname} className="ml-auto mr-3" >
                <Nav.Item>
                    <Nav.Link as={Link} href="/Home" to="/Home">Pagina Inicial</Nav.Link>
                </Nav.Item>
                <Nav.Item>
                    <Nav.Link as={Link} href="/produtos" to="/produtos">Produtos</Nav.Link>
                </Nav.Item>
                <Nav.Item>
                    <Nav.Link as={Link} href="/lojas" to="/lojas">Nossas Lojas</Nav.Link>
                </Nav.Item>
                <Nav.Item>
                    <Nav.Link as={Link} href="/Contato" to="/Contato">Fale Conosco</Nav.Link>
                </Nav.Item>
            </Nav>
        </Navbar.Collapse>
    </Navbar>

    )
}

const Menu = withRouter(BaseMenu);

export default Menu;