package com.example.ms_vehiculos.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name="registro")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class RegistroEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true, nullable = false)
    private Long id;
    @Column(unique = true, nullable = false)
    private String patente;
    private String marca;
    private String modelo;
    private String tipo;
    private int anoFabr;
    private String tipoMotor;
    private int numAsientos;
    private String bono;
    private int kilometraje;
}
