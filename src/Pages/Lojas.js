import { Container, Row, Card } from 'react-bootstrap';

export default function Lojas() {
    return (
        <Container>
            <header>
                <h1>Nossas Lojas</h1>
                <hr />
            </header>
            <main>
                <Row>
                    <Card className="col-lg-4">
                        <p>Rio de Janeiro</p>
                        <p>Avenida Presidente Vargas, 5000 10 º andar - Centro</p>
                        <p>(21) 3333-3333</p>
                    </Card>
                    <Card className="col-lg-4">
                        <p>São Paulo</p>
                        <p>Avenida Paulista, 985 3º andar - Jardins</p>
                        <p>(11) 4444-4444</p>
                    </Card>
                    <Card className="col-lg-4">
                        <p>Santa Catarina</p>
                        <p>Rua Major Ávila, 370 - Vila Mariana</p>
                        <p>(47) 5555-5555</p>
                    </Card>
                </Row>
            </main>
       
        </Container>
    )
}