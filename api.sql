
create database local;
use local;
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Edad INT,
    Ciudad VARCHAR(50),
    EstadoCivil VARCHAR(10) 
);


INSERT INTO Clientes (Nombre, Apellido, Edad, Ciudad, EstadoCivil) VALUES
('Juan', 'Perez', 25, 'Manta', 'Soltero'),
('Maria', 'Gomez', 30, 'Portoviejo', 'Casado'),
('Luis', 'Gonzalez', 40, 'Jipijapa', 'Soltero'),
('Ana', 'Martinez', 35, 'Santa Ana', 'Divorciado'),
('Pedro', 'Velez', 28, 'Montecristi', 'Casado'),
('Elena', 'Rodriguez', 22, 'Chone', 'Soltero'),
('Carlos', 'Suarez', 33, 'Calceta', 'Casado'),
('Laura', 'Alvarez', 29, 'Junín', 'Soltero'),
('Roberto', 'Mendoza', 45, 'El Carmen', 'Casado'),
('Diana', 'Mora', 27, 'Flavio Alfaro', 'Casado'),
('Alejandro', 'Morales', 31, 'Puerto López', 'Soltero'),
('Patricia', 'Garcia', 39, '24 de Mayo', 'Casado'),
('Gabriel', 'Moreno', 26, 'Tosagua', 'Soltero'),
('Sofia', 'Herrera', 34, 'Rocafuerte', 'Soltero'),
('Andres', 'Chavez', 36, 'Sucre', 'Casado');


CREATE TABLE Productos (
    ProductoID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(50),
    Precio DECIMAL(10, 2),
    Modelo VARCHAR(50),
    Marca VARCHAR(50),
    Cuotas INT,
    ClienteID INT,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);


INSERT INTO Productos (Nombre, Precio, Modelo, Marca, Cuotas, ClienteID) VALUES
('Moto', 2500.00, 'XZ-200', 'Yamaha', 12, 1),
('Carro', 15000.00, 'Civic', 'Honda', 24, 3),
('Carro', 18000.00, 'Accord', 'Honda', 36, 5),
('Moto', 1800.00, 'GSX-R600', 'Suzuki', 12, 6),
('Carro', 22000.00, 'Corolla', 'Toyota', 24, 7),
('Moto', 3000.00, 'Ninja 400', 'Kawasaki', 12, 8),
('Carro', 25000.00, 'Sonata', 'Hyundai', 36, 10),
('Moto', 2000.00, 'CBR500R', 'Honda', 12, 11),
('Carro', 28000.00, 'Cruze', 'Chevrolet', 24, 12),
('Moto', 2700.00, 'MT-09', 'Yamaha', 12, 14),
('Carro', 20000.00, 'Focus', 'Ford', 24, 15),
('Moto', 3200.00, 'GSX-S750', 'Suzuki', 12, 2),
('Carro', 30000.00, 'Fusion', 'Ford', 36, 4),
('Carro', 27000.00, 'Camry', 'Toyota', 24, 9),
('Moto', 3500.00, 'Ninja 650', 'Kawasaki', 12, 13);
