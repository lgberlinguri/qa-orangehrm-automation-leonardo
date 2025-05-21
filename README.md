Projeto de Testes Automatizados - OrangeHRM (Robot Framework)

Este repositório contém a automação de testes de interface do sistema OrangeHRM utilizando o Robot Framework com padrão Page Object Model (POM).

Automação criada com amor, paciência e muitos gritos de alegria pela finalização de cada teste! 

✅ Casos de Teste Automatizados

Login com sucesso

Logout do sistema

Cadastro de novo funcionário (PIM > Add Employee)

Busca de funcionário cadastrado (PIM > Employee List)

Login inválido com validação de mensagem de erro



Estrutura de Pastas

qa-orangehrm-automation-leonardo/
├── tests/                         # Casos de teste (.robot)
│   └── login_tests.robot
│
├── resources/                    # Page Objects (.resource)
│   ├── LoginPage.resource
│   ├── AddEmployeePage.resource
│   └── EmployeeListPage.resource
│
├── variables/                   # Variáveis globais
│   └── config_variables.resource
│
├── venv/                        # Ambiente virtual Python
├── requirements.txt             # Dependências
├── README.md                    # Este arquivo
└── output.xml / log.html        # Relatórios gerados automaticamente

Requisitos:
Python 3.10+
pip


Instalação:
python -m venv venv
.\venv\Scripts\activate      # Windows
pip install -r requirements.txt

Executando os testes:
robot tests/

Após a execução, consulte:

log.html: log detalhado com capturas de tela em caso de erro

report.html: relatório de execução geral


Dependências principais:

robotframework
robotframework-seleniumlibrary
webdriver-manager


Diferenciais:

Estrutura modular e escalável

Isolamento de responsabilidades por página

Facilidade de manutenção

Pronto para integração com CI/CD (GitHub Actions opcional)




Autor

Leonardo Gatti 