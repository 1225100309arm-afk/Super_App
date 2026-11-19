# 🛒 Super Dolores — Super app con TDD

Super app de Dolores Hidalgo (monedero, comercio, transporte, mensajería, lealtad, analítica y notificaciones) hecha en Flutter/Dart con **TDD**.








###  · Sin código
 Las pruebas existen pero el código aún no, así que no compila.
![R1 rojo](capturas/R01_sin_codigo_rojo.jpg)

###  · Dinero (porcentaje redondeado)
 `centavos * pct ~/ 100` trunca en lugar de redondear.
![R2 rojo](capturas/R02_dinero_rojo.jpg)
`(centavos * pct + 50) ~/ 100` redondea al más cercano.
![R2 verde](capturas/R02_dinero_verde.jpg)

###  · Monedero (idempotencia)
Sin `if (previo != null) return previo;` la misma transferencia se cobra dos veces.
![R3 rojo](capturas/R03_monedero_rojo.jpg)
 Con la clave de idempotencia se cobra una sola vez.
![R3 verde](capturas/R03_monedero_verde.jpg)

###  · Bus de eventos (aislar fallos)
Sin `try/catch`, un suscriptor que falla tumba a los demás.
![R4 rojo](capturas/R04_eventos_rojo.jpg)
Con `try/catch` el error se registra y los demás reciben el evento.
![R4 verde](capturas/R04_eventos_verde.jpg)

###  · Comercio (comisión)
 `comisionPct = 10`: la prueba espera 280 y sale 560.
![R6 rojo](capturas/R06_comercio_rojo.jpg)
 `comisionPct = 5`.
![R6 verde](capturas/R06_comercio_verde.jpg)

### · Lealtad (puntos por gasto)
 `gasto ~/ 100` da 1 punto por peso: fallan 11 pruebas.
![R9 rojo](capturas/R09_lealtad_rojo.jpg)
 `gasto ~/ centavosPorPunto` da 1 punto por cada $10.
![R9 verde](capturas/R09_lealtad_verde.jpg)

<img width="720" height="1600" alt="image" src="https://github.com/user-attachments/assets/7df71924-d57c-4bb5-994e-45c0a633ef68" />

<img width="720" height="1600" alt="image" src="https://github.com/user-attachments/assets/2dbda8de-1993-4441-b79c-c920ba7f1104" />

<img width="1080" height="2400" alt="image" src="https://github.com/user-attachments/assets/66005ef2-9773-40aa-919d-9d4a79b9468c" />

<img width="1080" height="2400" alt="image" src="https://github.com/user-attachments/assets/fb13f173-d959-442e-9fb3-5e63d980b289" />

<img width="1080" height="2400" alt="image" src="https://github.com/user-attachments/assets/eed4e65c-7626-451b-837c-1f94bad54d63" />

<img width="1080" height="2400" alt="image" src="https://github.com/user-attachments/assets/a598f6d5-98ae-4341-830b-303f3f64a1aa" />

<img width="1080" height="2400" alt="image" src="https://github.com/user-attachments/assets/39d939e8-1430-4b82-a442-34cad92cb356" />

## Corrección al manual
En `test/retencion_test.dart` el manual esperaba 13 puntos, pero olvidaba su propia regla del bono semanal (2 servicios distintos = +50). Se corrigió a `5 + 8 + 50`.

## ▶️ Cómo ejecutarlo
```bash
flutter pub get
flutter test
```
