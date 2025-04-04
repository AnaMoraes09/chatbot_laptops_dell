#libs

import pandas as pd
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service

# Inicializando a instância do ChromeDriver
service = Service()
options = webdriver.ChromeOptions()
driver = webdriver.Chrome(service=service, options=options)

url = 'https://www.dell.com/pt-br/shop/notebooks-dell/scr/laptops'

try:
    print("Acessando a página...")
    driver.get(url)
    driver.implicitly_wait(10)  # Espera até 10 segundos para os elementos carregarem
    print("Página acessada com sucesso!")

    print('Entrando no primeiro produto...')
    driver.find_element(By.XPATH, '//*[@id="inspiron-15-3520-laptop"]/section[2]/div[1]/h3').click()
    driver.implicitly_wait(10)  # Espera até 10 segundos para os elementos carregarem
    print("Produto acessado com sucesso!")

# Informações a serem coletadas:
    ## Nome do produto
    ## Preço do produto
    ## Processador
    ## Sistema operacional
    ## Placa de vídeo
    ## Tela
    ## Memória
    ## Armazenamento
    ## Teclado
    ## Portas
    ## Dimensões
    ## Camera
    ## Audio
    ## Chassi
    ## Wireless

except Exception as e:
    print("Erro ao acessar a página:", e)

input("Pressione Enter para fechar o navegador...")

