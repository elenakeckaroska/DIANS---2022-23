package mk.ukim.finki.dians.app.repository.jpa;

import mk.ukim.finki.dians.app.model.Accommodation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AccommodationRepository extends JpaRepository<Accommodation,Long> {

    List<Accommodation> findByNameContainingIgnoreCase(String keyword);

}
