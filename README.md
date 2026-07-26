# David Freire — DevOps Portfolio

Portfolio pessoal e projeto prático de DevOps: um site estático (currículo web)
empacotado em uma imagem Docker e publicado automaticamente via CI/CD no GitHub
Container Registry, com pipeline para deploy posterior em servidor na nuvem.

> 🇺🇸 English version below.

---

## 🇧🇷 Sobre o projeto (PT-BR)

Projeto prático para demonstrar competências de **DevOps**: empacotamento com
Docker, CI/CD com GitHub Actions e publicação de imagem em um registry. O site
servido é o currículo web do autor.

### Stack atual (Fase 0–1)
- **Container:** Docker (imagem `nginx:alpine`)
- **CI/CD:** GitHub Actions (build + push para o GHCR)
- **Registry:** GitHub Container Registry (`ghcr.io/dfreire052/devops-portfolio`)
- **Web server:** nginx (serve o site + endpoint `/health`)

### Endpoint de health check
`GET /health` → `200 {"status":"ok"}` — usado para verificar a saúde da aplicação no deploy.

### Roadmap
- ✅ **Fase 0–1:** site + Dockerfile + CI/CD (build → GHCR)
- ⬜ **Fase 2:** deploy na nuvem — Docker simples em AWS EC2 (depois evolui para k3s)
- ⬜ **Fase 3:** manifests Kubernetes (Deployments, Services, Ingress, probes)
- ⬜ **Fase 4:** deploy contínuo (GitHub Actions → cluster)
- ⬜ **Fase 5:** observabilidade (Prometheus + Grafana)
- ⬜ **Fase 6:** README executivo, arquitetura e screenshots

### Como rodar localmente
```bash
docker build -t devops-portfolio .
docker run -p 8080:80 devops-portfolio
# Site:       http://localhost:8080
# Health:     http://localhost:8080/health
```

---

## 🇺🇸 About (EN)

Personal portfolio and hands-on DevOps project: a static site (web résumé)
packaged as a Docker image and automatically published via CI/CD to the GitHub
Container Registry, with a pipeline for later deployment to a cloud server.

### Current stack (Phase 0–1)
- **Container:** Docker (`nginx:alpine` image)
- **CI/CD:** GitHub Actions (build + push to GHCR)
- **Registry:** GitHub Container Registry (`ghcr.io/dfreire052/devops-portfolio`)
- **Web server:** nginx (serves the site + `/health` endpoint)

### Run locally
```bash
docker build -t devops-portfolio .
docker run -p 8080:80 devops-portfolio
```

---

**Autor / Author:** David Freire · [github.com/dfreire052](https://github.com/dfreire052)
