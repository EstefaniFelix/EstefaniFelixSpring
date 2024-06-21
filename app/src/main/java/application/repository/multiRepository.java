package application.repository;

import org.springframework.data.repository.CrudRepository;

import application.model.Multiplayer;

public interface multiRepository extends CrudRepository<Multiplayer, Long> {
    public Iterable<Multiplayer> findByTitulo(String titulo);
}
