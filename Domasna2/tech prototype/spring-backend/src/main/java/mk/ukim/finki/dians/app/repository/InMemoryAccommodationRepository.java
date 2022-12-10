//package mk.ukim.finki.dians.app.repository;
//
//import mk.ukim.finki.dians.app.bootstrap.DataHolder;
//import mk.ukim.finki.dians.app.model.Accommodation;
//import org.springframework.stereotype.Repository;
//
//import java.util.List;
//import java.util.Optional;
//import java.util.stream.Collectors;
//
//@Repository
//public class InMemoryAccommodationRepository {
//
//    public List<Accommodation> findAll(){
//        return DataHolder.accommodations;
//    }
//    public Optional<Accommodation> findById(Long id){
//        return DataHolder.accommodations.stream()
//                .filter(i -> i.getId().equals(id))
//                .findFirst();
//    }
//
//    public List<Accommodation> findByCity(String city){
//        return DataHolder.accommodations.stream()
//                .filter(i -> i.getCity().equals(city))
//                .collect(Collectors.toList());
//    }
//
//    public List<Accommodation> findByStars(Integer stars){
//        return DataHolder.accommodations.stream()
//                .filter(i -> i.getStars()==stars)
//                .collect(Collectors.toList());
//    }
//}
