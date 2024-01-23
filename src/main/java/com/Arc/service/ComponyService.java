package com.Arc.service;

import java.util.List;

import com.Arc.model.CompAdvertisement;
import com.Arc.model.Company;

public interface ComponyService {
 void saveCompony(Company compony);

void addAdvertisment(CompAdvertisement company);

List<CompAdvertisement> getAllCompAdvertisements();

void delete(Long advId);






 
}
