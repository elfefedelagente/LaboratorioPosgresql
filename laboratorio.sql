-------------------------PUNTO 1---------------------------------
CREATE TYPE tMedidasPista AS(
	Kmlongitud REAL,
	Kmancho REAL,
	tipoDeCompuesto VARCHAR(30)
);
	
CREATE TYPE tUbicacion AS(
	ciudad VARCHAR(30),
	provincia VARCHAR(30),
	pais VARCHAR(30)
);

CREATE TYPE tAeropuerto AS (
	nombre VARCHAR(128),
	ubicacion tUbicacion, 
	medidasPista tMedidasPista, 
	aerolineas VARCHAR(60)[]
);	

-------------------------PUNTO 2---------------------------------
CREATE TABLE aeropuerto OF tAeropuerto;

-- Inserts
INSERT INTO aeropuerto(nombre, ubicacion, medidasPista, aerolineas) VALUES 
('Aeropuerto Internacional Ministro Pistarini', 
    ('Ezeiza', 'Buenos Aires', 'Argentina'),
    (3.3, 0.056, 'Asfalto'),
    CAST(ARRAY['Aerolineas Argentinas', 'American Airlines', 'Lufthansa'] AS varchar[])
);

INSERT INTO aeropuerto(nombre, ubicacion, medidasPista, aerolineas) VALUES 
('Aeroparque Jorge Newbery', 
    ('Buenos Aires', 'Buenos Aires', 'Argentina'),
    (2.1, 0.045, 'Asfalto'),
    CAST(ARRAY['Aerolineas Argentinas', 'Austral', 'LATAM Argentina'] AS varchar[])
);

INSERT INTO aeropuerto(nombre, ubicacion, medidasPista, aerolineas) VALUES 
('Aeropuerto Internacional Ingeniero Ambrosio Taravella', 
    ('Córdoba', 'Córdoba', 'Argentina'),
    (3.2, 0.030, 'Asfalto'),
    CAST(ARRAY['Aerolineas Argentinas', 'Flybondi', 'JetSmart'] AS varchar[])
);

INSERT INTO aeropuerto(nombre, ubicacion, medidasPista, aerolineas) VALUES 
('Aeropuerto Internacional Gobernador Francisco Gabrielli', 
    ('Mendoza', 'Mendoza', 'Argentina'),
    (2.8, 0.044, 'Asfalto'),
    CAST(ARRAY['Aerolineas Argentinas', 'LATAM Argentina', 'Sky Airline'] AS varchar[])
);

INSERT INTO aeropuerto(nombre, ubicacion, medidasPista, aerolineas) VALUES 
('Aeropuerto Internacional de Rosario – Islas Malvinas', 
    ('Rosario', 'Santa Fe', 'Argentina'),
    (3.0, 0.029, 'Asfalto'),
    CAST(ARRAY['Aerolineas Argentinas', 'GOL', 'Copa Airlines'] AS varchar[])
);

INSERT INTO aeropuerto(nombre, ubicacion, medidasPista, aerolineas) VALUES 
('Aeropuerto Internacional Martín Miguel de Güemes', 
    ('Salta', 'Salta', 'Argentina'),
    (3.0, 0.047, 'Asfalto'),
    CAST(ARRAY['Aerolineas Argentinas', 'Flybondi', 'JetSmart'] AS varchar[])
);

INSERT INTO aeropuerto(nombre, ubicacion, medidasPista, aerolineas) VALUES 
('Aeropuerto Internacional Teniente General Benjamín Matienzo', 
    ('San Miguel de Tucumán', 'Tucumán', 'Argentina'),
    (3.5, 0.043, 'Tierra'),
    CAST(ARRAY['Aerolineas Argentinas', 'Flybondi', 'JetSmart'] AS varchar[])
);

INSERT INTO aeropuerto(nombre, ubicacion, medidasPista, aerolineas) VALUES 
('Aeropuerto Internacional Presidente Perón', 
    ('Neuquén', 'Neuquén', 'Argentina'),
    (2.5, 0.061, 'Asfalto'),
    CAST(ARRAY['Aerolineas Argentinas', 'Flybondi', 'JetSmart'] AS varchar[])
);

INSERT INTO aeropuerto(nombre, ubicacion, medidasPista, aerolineas) VALUES 
('Aeropuerto Internacional Astor Piazzolla', 
    ('Mar del Plata', 'Buenos Aires', 'Argentina'),
    (2.2, 0.045, 'Asfalto'),
    CAST(ARRAY['Aerolineas Argentinas', 'Austral'] AS varchar[])
);

INSERT INTO aeropuerto(nombre, ubicacion, medidasPista, aerolineas) VALUES 
('Aeropuerto Domingo Faustino Sarmiento', 
    ('San Juan', 'San Juan', 'Argentina'),
    (2.4, 0.036, 'Asfalto'),
    CAST(ARRAY['Aerolineas Argentinas', 'Flybondi', 'JetSmart'] AS varchar[])
);

INSERT INTO aeropuerto(nombre, ubicacion, medidasPista, aerolineas) VALUES 
('Aeropuerto Brigadier Mayor César Raúl Ojeda', 
    ('San Luis', 'San Luis', 'Argentina'),
    (2.8, 0.045, 'Asfalto'),
    CAST(ARRAY['Aerolineas Argentinas'] AS varchar[])
);

INSERT INTO aeropuerto(nombre, ubicacion, medidasPista, aerolineas) VALUES 
('Aeropuerto Internacional Gobernador Horacio Guzmán', 
    ('San Salvador de Jujuy', 'Jujuy', 'Argentina'),
    (3.0, 0.053, 'Asfalto'),
    CAST(ARRAY['Aerolineas Argentinas', 'Flybondi'] AS varchar[])
);

INSERT INTO aeropuerto(nombre, ubicacion, medidasPista, aerolineas) VALUES 
('Aeropuerto Internacional Libertador General José de San Martín', 
    ('Posadas', 'Misiones', 'Argentina'),
    (2.2, 0.039, 'Asfalto'),
    CAST(ARRAY['Aerolineas Argentinas', 'Flybondi'] AS varchar[])
);

INSERT INTO aeropuerto(nombre, ubicacion, medidasPista, aerolineas) VALUES 
('Aeropuerto Internacional Teniente Luis Candelaria', 
    ('San Carlos de Bariloche', 'Río Negro', 'Argentina'),
    (3.4, 0.037, 'Asfalto'),
    CAST(ARRAY['Aerolineas Argentinas', 'Flybondi', 'JetSmart'] AS varchar[])
);

INSERT INTO aeropuerto(nombre, ubicacion, medidasPista, aerolineas) VALUES 
('Aeropuerto Almirante Marcos A. Zar', 
    ('Trelew', 'Chubut', 'Argentina'),
    (3.5, 0.045, 'Asfalto'),
    CAST(ARRAY['Aerolineas Argentinas', 'Flybondi'] AS varchar[])
);

INSERT INTO aeropuerto(nombre, ubicacion, medidasPista, aerolineas) VALUES 
('Aeropuerto El Tehuelche', 
    ('Puerto Madryn', 'Chubut', 'Argentina'),
    (2.5, 0.030, 'Asfalto'),
    CAST(ARRAY['Aerolineas Argentinas'] AS varchar[])
);

INSERT INTO aeropuerto(nombre, ubicacion, medidasPista, aerolineas) VALUES 
('Aeropuerto Internacional General Enrique Mosconi', 
    ('Comodoro Rivadavia', 'Chubut', 'Argentina'),
    (2.8, 0.056, 'Asfalto'),
    CAST(ARRAY['Aerolineas Argentinas', 'Flybondi'] AS varchar[])
);

INSERT INTO aeropuerto(nombre, ubicacion, medidasPista, aerolineas) VALUES 
('Aeropuerto Internacional Piloto Civil Norberto Fernández', 
    ('Río Gallegos', 'Santa Cruz', 'Argentina'),
    (3.0, 0.034, 'Asfalto'),
    CAST(ARRAY['Aerolineas Argentinas'] AS varchar[])
);

INSERT INTO aeropuerto(nombre, ubicacion, medidasPista, aerolineas) VALUES 
('Aeropuerto Internacional Malvinas Argentinas', 
    ('Ushuaia', 'Tierra del Fuego', 'Argentina'),
    (3.0, 0.050, 'Asfalto'),
    CAST(ARRAY['Aerolineas Argentinas', 'Flybondi'] AS varchar[])
);

INSERT INTO aeropuerto(nombre, ubicacion, medidasPista, aerolineas) VALUES 
('Aeropuerto Internacional de Resistencia', 
    ('Resistencia', 'Chaco', 'Argentina'),
    (2.8, 0.041, 'Asfalto'),
    CAST(ARRAY['Aerolineas Argentinas'] AS varchar[])
);

INSERT INTO aeropuerto(nombre, ubicacion, medidasPista, aerolineas) VALUES 
('Aeropuerto El Pucú', 
    ('Formosa', 'Formosa', 'Argentina'),
    (1.8, 0.043, 'Asfalto'),
    CAST(ARRAY['Aerolineas Argentinas'] AS varchar[])
);


-------------------------PUNTO 3---------------------------------
CREATE TYPE tespacio AS (

	nroParcela INTEGER,
	ocupado BOOLEAN,
	avion oids

);

create table aeropuertosHangares(
	
	precio REAL,
	espacios tespacio[]


) inherits (aeropuertos);








	