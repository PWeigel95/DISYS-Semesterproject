package com.example.invoicegeneratorfx;

import javafx.fxml.FXML;
import javafx.scene.control.Label;

public class InvoiceGeneratorController {
    @FXML
    private Label invoiceStatusText;

    @FXML
    protected void generateInvoice() {
        invoiceStatusText.setText("HAHA");

    }
}