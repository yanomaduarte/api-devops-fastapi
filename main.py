from fastapi import FastAPI

app = FastAPI(title="Minha API DevOps")


@app.get("/")
def home():
    return {"mensagem": "API rodando perfeitamente de dentro do Docker!", "status": "Online"}


@app.get("/perfil")
def portfolio():
    return {
        "profissional": "Engenharia Cloud & DevOps",
        "skills": ["Redes", "Python", "Docker", "Design de Infraestrutura"],
        "projetos_concluidos": 2
    }
