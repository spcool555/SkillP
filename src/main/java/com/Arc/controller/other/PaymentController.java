/*package com.skillpilots.controller.other;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.skillpilots.service.PhonePeService;

// Define a controller to handle the payment initiation request




@Controller
public class PaymentController {

    @Autowired
    private PhonePeService phonePeService;  // Inject your PhonePeService

    @PostMapping("/initiatePayment")
    @ResponseBody
    public ResponseEntity<Map<String, String>> initiatePayment() {
        Map<String, String> response = new HashMap<>();

        try {
            String paymentUrl = phonePeService.initiatePhonePePayment();

            // Assuming payment initiation was successful
            response.put("status", "success");
            response.put("paymentUrl", paymentUrl);

            return ResponseEntity.ok(response);
        } catch (Exception e) {
            // Handle any exceptions that may occur during payment initiation
            response.put("status", "error");
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(response);
        }
    }
}
*/


