Proceso SistemaPedidoFastFood
    Definir opcion, opcionProducto Como Entero;
    Definir totalPedido, totalDescuento Como Real;
    Definir cantidadHamburguesas, cantidadPapas, cantidadBebidas Como Entero;
    Definir precioHamburguesaClasica, precioHamburguesaDoble, precioHamburguesaEspecial Como Real;
    Definir precioPapasClasicas, precioPapasSupreme Como Real;
    Definir precioBebidaNormal, precioBebidaGrande Como Real;
    Definir continuar, numeroPedido, codigoCompra Como Entero;
    Definir detallesPedido Como Cadena;
	
    // Definimos los precios de los productos
    precioHamburguesaClasica = 5000;
    precioHamburguesaDoble = 8000;
    precioHamburguesaEspecial = 10000;
	
    precioPapasClasicas = 2000;
    precioPapasSupreme = 2500;
	
    precioBebidaNormal = 1500;
    precioBebidaGrande = 2000;
	
    totalPedido = 0;  // Inicializamos el total del pedido
    totalDescuento = 0;  // Inicializamos el descuento
    continuar = 1; // Inicializamos la variable de control de salida (1 para continuar)
    numeroPedido = 1000;  // N�mero de pedido inicial
    detallesPedido = "";  // Inicializamos los detalles del pedido
	
    // Generamos un c�digo �nico para la compra (puede ser un n�mero aleatorio o incremento)
    codigoCompra = numeroPedido + 1000;
	
    Escribir "Bienvenido al sistema de pedidos Fast Food";
	
    Mientras continuar = 1 Hacer
        Escribir "Por favor, elija una opci�n de men�:";
        Escribir "1. Hamburguesas";
        Escribir "2. Papas fritas";
        Escribir "3. Bebidas";
        Escribir "4. Ver total y finalizar pedido";
        Escribir "5. Salir";
        Leer opcion;
		
        Segun opcion Hacer
            Caso 1:
                Escribir "Seleccione el tipo de hamburguesa:";
                Escribir "1. Hamburguesa Cl�sica - $5000";
                Escribir "2. Hamburguesa Doble - $8000";
                Escribir "3. Hamburguesa Especial - $10000";
                Leer opcionProducto;
				
                Si opcionProducto = 1 Entonces
                    Escribir "Cu�ntas hamburguesas cl�sicas desea:";
                    Leer cantidadHamburguesas;
                    totalPedido = totalPedido + (cantidadHamburguesas * precioHamburguesaClasica);
                    detallesPedido = detallesPedido + "Hamburguesas Cl�sicas: " + ConvertirATexto(cantidadHamburguesas) + " x $5000\n";
                Sino
                    Si opcionProducto = 2 Entonces
                        Escribir "Cu�ntas hamburguesas dobles desea:";
                        Leer cantidadHamburguesas;
                        totalPedido = totalPedido + (cantidadHamburguesas * precioHamburguesaDoble);
                        detallesPedido = detallesPedido + "Hamburguesas Dobles: " + ConvertirATexto(cantidadHamburguesas) + " x $8000\n";
                    Sino
                        Si opcionProducto = 3 Entonces
                            Escribir "Cu�ntas hamburguesas especiales desea:";
                            Leer cantidadHamburguesas;
                            totalPedido = totalPedido + (cantidadHamburguesas * precioHamburguesaEspecial);
                            detallesPedido = detallesPedido + "Hamburguesas Especiales: " + ConvertirATexto(cantidadHamburguesas) + " x $10000\n";
                        FinSi;
                    FinSi;
                FinSi;
                Escribir "Producto agregado al pedido.";
				
            Caso 2:
                Escribir "Seleccione el tipo de papas:";
                Escribir "1. Papas Cl�sicas - $2000";
                Escribir "2. Papas Supreme - $2500";
                Leer opcionProducto;
				
                Si opcionProducto = 1 Entonces
                    Escribir "Cu�ntas porciones de papas cl�sicas desea:";
                    Leer cantidadPapas;
                    totalPedido = totalPedido + (cantidadPapas * precioPapasClasicas);
                    detallesPedido = detallesPedido + "Papas Cl�sicas: " + ConvertirATexto(cantidadPapas) + " x $2000\n";
                Sino
                    Si opcionProducto = 2 Entonces
                        Escribir "Cu�ntas porciones de papas Supreme desea:";
                        Leer cantidadPapas;
                        totalPedido = totalPedido + (cantidadPapas * precioPapasSupreme);
                        detallesPedido = detallesPedido + "Papas Supreme: " + ConvertirATexto(cantidadPapas) + " x $2500\n";
                    FinSi;
                FinSi;
                Escribir "Producto agregado al pedido.";
				
            Caso 3:
                Escribir "Seleccione el tipo de bebida:";
                Escribir "1. Bebida Normal - $1500";
                Escribir "2. Bebida Grande - $2000";
                Leer opcionProducto;
				
                Si opcionProducto = 1 Entonces
                    Escribir "Cu�ntas bebidas normales desea:";
                    Leer cantidadBebidas;
                    totalPedido = totalPedido + (cantidadBebidas * precioBebidaNormal);
                    detallesPedido = detallesPedido + "Bebidas Normales: " + ConvertirATexto(cantidadBebidas) + " x $1500\n";
                Sino
                    Si opcionProducto = 2 Entonces
                        Escribir "Cu�ntas bebidas grandes desea:";
                        Leer cantidadBebidas;
                        totalPedido = totalPedido + (cantidadBebidas * precioBebidaGrande);
                        detallesPedido = detallesPedido + "Bebidas Grandes: " + ConvertirATexto(cantidadBebidas) + " x $2000\n";
                    FinSi;
                FinSi;
                Escribir "Producto agregado al pedido.";
				
            Caso 4:
                Escribir "El total de su pedido es: $", totalPedido;
                Si totalPedido > 20000 Entonces
                    totalDescuento = totalPedido * 0.10;  // 10% de descuento por compras superiores a 20,000
                    totalPedido = totalPedido - totalDescuento;
                    Escribir "�Felicidades! Ha recibido un descuento de 10%. El nuevo total es: $", totalPedido;
                FinSi;
                Escribir "Detalles del pedido:";
                Escribir detallesPedido;
                Escribir "�Desea finalizar su compra?";
                Escribir "1. S�";
                Escribir "2. No";
                Leer opcion;
                Si opcion = 1 Entonces
                    Escribir "Gracias por su compra. El total a pagar es: $", totalPedido;
                    Escribir "N�mero de pedido: ", numeroPedido;
                    Escribir "C�digo de compra �nico: ", codigoCompra;
                    Escribir "�Que disfrute su comida!";
                    continuar = 0; // Cambiamos la condici�n de la variable para salir del ciclo
                FinSi;
				
            Caso 5:
                Escribir "Gracias por visitar. �Hasta pronto!";
                continuar = 0; // Cambiamos la condici�n de la variable para salir del ciclo
				
            De Otro Modo:
                Escribir "Opci�n no v�lida, por favor intente nuevamente.";
        FinSegun;
    FinMientras;  // El ciclo terminar� cuando 'continuar' sea 0
FinProceso


