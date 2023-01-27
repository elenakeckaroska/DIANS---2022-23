package mk.ukim.finki.dians.app.web.controllers;

import mk.ukim.finki.dians.app.model.Accommodation;
import mk.ukim.finki.dians.app.service.impl.AccommodationServiceImpl;
import org.springframework.http.ResponseEntity;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;
import java.util.List;

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
    public List<Accommodation> applyFilters(@RequestParam(required = false) MultiValueMap<String, String> multiValueMap,
                                            @RequestParam(required = false) String sortValue) {
        return accommodationService.getAccommodations(multiValueMap, sortValue);
    }

    @GetMapping("/search")
    public List<Accommodation> searchByNameOfAccommodation(@RequestParam(required = false) String keyword) {
        if (keyword == null || keyword.equals("")) {
            return accommodationService.findAll();
        }
        return accommodationService.findByAccommodationName(keyword);
    }

}
