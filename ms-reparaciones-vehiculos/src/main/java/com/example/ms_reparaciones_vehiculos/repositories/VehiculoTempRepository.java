package com.example.ms_reparaciones_vehiculos.repositories;

import com.example.ms_reparaciones_vehiculos.entities.VehiculoTempEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VehiculoTempRepository extends JpaRepository<VehiculoTempEntity, Long> {
    public VehiculoTempEntity findByPatente(String patente);
}
