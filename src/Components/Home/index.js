import './Home.css';

export default function Principal() {
    return (
        <div>
            <h1>Seja bem vindo(a)</h1>
            <p>Aqui em nossa loja programadores tem desconto em produtos para a sua casa!</p>
       
            <figure className="familia">
                <img src={require(`../Home/familia.jpg`).default} alt="Imagem de Produtos" />
            </figure>
        </div>
    );

}


