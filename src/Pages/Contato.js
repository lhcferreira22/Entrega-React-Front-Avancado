import { Container, Form, Card, Row } from 'react-bootstrap';

import { lazy, Suspense } from 'react';



export default function Contato() {
    return (
        <Container>
            <header>
                <h1>Fale Conosco</h1>
                <hr />
            </header>

            <main>
                <Form>
                    <Form.Group>
                        <Form.Label>Nome Completo:</Form.Label>
                        <Form.Control type="text" ></Form.Control>
                        <Form.Label>Email:</Form.Label>
                        <Form.Control type="email" ></Form.Control>
                        <Form.Label>Mensagem</Form.Label>
                        <Form.Control type="textarea" ></Form.Control>
                    </Form.Group>
                    <button variant="primary" type="">Enviar</button>
                </Form>
            </main>
            <br/>
            <Row>
                <Card className="col-lg-6">
                    <p>Email: contato@fullstackeletro.com</p>
                </Card>
                <Card className="col-lg-6">
                    <p>WhatsApp: (11) 99999-9999</p>
                </Card>
            </Row>
        </Container>
    );
}