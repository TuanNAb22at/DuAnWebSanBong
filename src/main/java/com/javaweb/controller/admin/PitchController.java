package com.javaweb.controller.admin;
import com.javaweb.model.response.PitchSearchResponse;
import com.javaweb.repository.CustomerRepository;
import com.javaweb.repository.PitchRepository;
import com.javaweb.service.IRentalReceiptService;
import com.javaweb.service.impl.PitchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Transactional
@Controller(value = "PitchControllerOfAdmin")
public class PitchController {
    @Autowired
    private CustomerRepository customerRepository;

    @Autowired
    private IRentalReceiptService rentalReceiptService;

    @Autowired
    private PitchService pitchService;
    @Autowired
    private PitchRepository pitchRepository;
    @RequestMapping(value = "/admin/pitchs-list",method = RequestMethod.GET)
    public ModelAndView getListPitchs( @RequestParam(name = "startDate",required = false) String startDateStr,
                                       @RequestParam(name = "endDate",required = false) String endDateStr,
                                       @RequestParam(name = "pitchTypeId",required = false) String pitchTypeId) {
        ModelAndView mav = new ModelAndView("/admin/pitch/list");
        List<PitchSearchResponse> pitchList = new ArrayList<>();
        if (startDateStr != null && endDateStr!=null){
            pitchList = pitchService.getAvailablePitches(startDateStr,endDateStr,pitchTypeId);
        }
        mav.addObject("pitchList",pitchList);
        return mav;
    }


}

