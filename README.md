<div align="center">
  <h1>🚀 API Web: FastAPI + Docker</h1>
  <p>
    Um projeto prático de <strong>DevOps</strong> focando em conteinerização de APIs, <strong>gestão de dependências</strong> e <strong>mapeamento de redes</strong>.
  </p>

  <img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white" alt="Python Badge" />
  <img src="https://img.shields.io/badge/FastAPI-005571?style=for-the-badge&logo=fastapi&logoColor=white" alt="FastAPI Badge" />
  <img src="https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white" alt="Docker Badge" />
</div>

<br>

## 📌 Visão Geral
Este repositório contém uma API Web real construída com **FastAPI** e conteinerizada via **Docker**. O projeto eleva os conceitos de infraestrutura imutável ao introduzir a gestão de bibliotecas externas (`requirements.txt`) e a exposição de portas de rede para comunicação externa.

## 🚀 Como Executar

Certifique-se de ter o [Docker](https://www.docker.com/) instalado na sua máquina.

### 1. Construindo a Imagem (Local)
Clone o repositório e construa a imagem executando os comandos abaixo no terminal:
```bash
git clone [https://github.com/yanomaduarte/api-devops-fastapi.git](https://github.com/yanomaduarte/api-devops-fastapi.git)
cd api-devops-fastapi
docker build -t minha-api-python .
```
2. Rodando o Container (Port Mapping)
Inicie o serviço mapeando a porta 8000 da rede isolada do container para a porta 8000 da sua máquina:
```bash
docker run -p 8000:8000 minha-api-python
```
3. Acessando a API
Com o container em execução, acesse as rotas através do seu navegador:
```bash
Status da API: http://localhost:8000/

Seu Portfólio: http://localhost:8000/perfil

Documentação Interativa (Swagger): http://localhost:8000/docs
```
🛠️ Estrutura do Projeto
```bash
.
├── main.py              # Código fonte da API (Rotas e Endpoints)
├── requirements.txt     # Dependências do Python (FastAPI, Uvicorn)
├── Dockerfile           # Receita de construção da imagem
├── .gitignore           # Arquivos temporários ignorados pelo Git
└── README.md            # Documentação central do projeto
```

🧠 Aprendizados e Práticas Aplicadas
Desenvolvimento Ágil: Uso do FastAPI para criar endpoints RESTful focados em performance.

Networking no Docker: Compreensão prática da flag -p para criar pontes de comunicação seguras entre o container e o host.

Otimização de Build: Uso da flag --no-cache-dir na instalação do pip dentro do Dockerfile, garantindo uma imagem final mais leve.

Documentação Automática: Aproveitamento do Swagger UI nativo do FastAPI para testar a aplicação visualmente, facilitando a entrega.

<div align="center">
<p>Feito com ☕ e foco em arquitetura Cloud.</p>
</div>