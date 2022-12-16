package mk.ukim.finki.dians.app.web;

import jakarta.annotation.PostConstruct;
import mk.ukim.finki.dians.app.model.Accommodation;
import mk.ukim.finki.dians.app.service.impl.AccommodationServiceImpl;
import org.springframework.http.ResponseEntity;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/accommodation")
@CrossOrigin
public class AccommodationController {

    private final AccommodationServiceImpl accommodationService;

    public AccommodationController(AccommodationServiceImpl accommodationService) {
        this.accommodationService = accommodationService;
    }

    @GetMapping
    public List<Accommodation> findAll(){
        return this.accommodationService.findAll();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Accommodation> findById(@PathVariable Long id){
        return this.accommodationService.findById(id)
                .map(a -> ResponseEntity.ok().body(a))
                .orElseGet(()->ResponseEntity.notFound().build());
    }

    @GetMapping("/filter")
    public List<Accommodation> applyFilters(@RequestParam(required = false) MultiValueMap<String, String> multiValueMap){
        if (multiValueMap == null) {
            return accommodationService.findAll();
        }
        List<String> cities = multiValueMap.getOrDefault("city",List.of("-1"));
        List<String> stars = multiValueMap.getOrDefault("stars",List.of("-1"));
        List<String> propertyType = multiValueMap.getOrDefault("property_type",List.of("-1"));
        List<String> internetAccess = multiValueMap.getOrDefault("internet_access",List.of("-1"));
        return accommodationService.getAccommodations(cities, stars, propertyType, internetAccess);
    }

}
