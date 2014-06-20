package com.softserveinc.ita.service;

import com.softserveinc.ita.BaseITATest;
import com.softserveinc.ita.entity.Applicant;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static junit.framework.Assert.assertEquals;

public class ApplicantServiceTest extends BaseITATest {

    @Autowired
    private ApplicantService applicantService;

    @Test
    public void testAddApplicantAndGetTheSameApplicant() throws Exception {
        Applicant newApplicant = applicantService.addNewApplicant(new Applicant());
        Applicant receivedApplicant = applicantService.getApplicantById(newApplicant.getId());
        assertEquals(newApplicant, receivedApplicant);
    }
}