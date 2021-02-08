import { useState, useEffect } from 'react';
import Produto from '../Components/Produto';
import { Container, Row } from 'react-bootstrap';

import { lazy, Suspense } from 'react';

const Menu_categoria = lazy(() => import('../Components/Produto/Menu_categoria.js'));

export default function Produtos() {
    const [produtos, setProdutos] = useState([]);

    useEffect(async () => {
        const resposta = await fetch('http://localhost:1910/');
        const dados = await resposta.json()
        setProdutos(dados);
    }, []);

    return (

        <Container>
            <h1>Produtos</h1>
            <hr />
            <Suspense fallback={<p>Carregando...</p>}>
                <Menu_categoria />
            </Suspense>
            <br />

            <Row>
                {produtos && produtos.map(item => <Produto imagem={item.imagem} descricao={item.descricao} preco={item.preco} preco_final={item.preco_final} categoria={item.geladeira} />)}
            </Row>

        </Container>

    );
}

