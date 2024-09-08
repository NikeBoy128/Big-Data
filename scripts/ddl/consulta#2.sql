CREATE TABLE vendedor (
    idvendedor INT PRIMARY KEY AUTO_INCREMENT,
    idtipo_documento INT,
    documento VARCHAR(30),
    nombre VARCHAR(30),
    apellido VARCHAR(30),
    idmunicipio INT,
    nacimiento DATE,
    FOREIGN KEY (idtipo_documento) REFERENCES tipo_documento(idtipo_documento),
    FOREIGN KEY (idmunicipio) REFERENCES municipio(idmunicipio)
);
