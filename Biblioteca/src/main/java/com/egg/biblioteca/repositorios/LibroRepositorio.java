package com.egg.biblioteca.repositorios;

import com.egg.biblioteca.entidades.Autor;
import com.egg.biblioteca.entidades.Editorial;
import com.egg.biblioteca.entidades.Libro;
import java.util.ArrayList;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface LibroRepositorio extends JpaRepository<Libro, Long>{
    @Query("SELECT l FROM Libro l WHERE l.titulo = :titulo")
    public Libro buscarPorTitulo(@Param("titulo") String titulo);
    
    @Query("SELECT l from Libro l WHERE l.autor = :autor")
    public ArrayList<Libro> buscarPorAutor(@Param("autor") Autor autor);
    
    @Query("SELECT l from Libro l WHERE l.editorial = :editorial")
    public ArrayList<Libro> buscarPorEditorial(@Param("editorial") Editorial editorial);
}
