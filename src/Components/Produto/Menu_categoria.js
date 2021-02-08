import { Container, ListGroup, Button } from "react-bootstrap";

export default function Menu_categoria() {

    return (
        <Container>
            <ListGroup>
                <Button variant="danger mb-1">Todos</Button>
                <Button variant="danger mb-1">Geladeira</Button>
                <Button variant="danger mb-1">Fogão</Button>
                <Button variant="danger mb-1">Microondas</Button>
                <Button variant="danger mb-1">Lava-Roupas</Button>
                <Button variant="danger mb-1">Lava-Louças</Button>
            </ListGroup>
        </Container>
    );
}




