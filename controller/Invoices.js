const Invoice = require("../model/Invoice");

const createInvoice = (req, res) => {
  let invoice = new Invoice({
    id_invoice: req.body.id_invoice,
    id_user: req.body.id_user,
    date: req.body.date,
    subtotal: req.body.subtotal,
    iva_twelve: req.body.subtotal * 1.12,
    iva_ten: req.body.subtotal*1.10,
  });

  invoice.save((err, invoic) => {
    err && res.status(500).json(err.message);
    res.status(200).json(invoic);
  });
};

const getInvoices = (req, res) => {
  Invoice.find((err, invoic) => {
    err && res.status(500).send(err.message);
    res.status(200).json(invoic);
  });
};

const getIdInvoices = (req, res) => {
  Invoice.find(
    { id_invoice: req.body.id_invoice},
    (err, invoic) => {
      err && res.status(500).send(err.message);
      res.status(200).send(invoic);
    }
  );
};

const updateInvoice = (req, res) => {
  Invoice.findOneAndUpdate(
    { id_invoice: req.body.id_invoice },
    {
      id_user: req.body.id_user,
      date: req.body.date,
      subtotal: req.body.subtotal,
      iva_twelve: req.body.subtotal * 1.12,
      iva_zero: req.body.subtotal/1.12,
    },
    (err, invoic) => {
      err && res.status(500).send(err.message);
      res.status(200).send(invoic);
    }
  );
};

const deleteInvoice = (req, res) => {
  Invoice.findOneAndDelete(
    { id_invoice: req.body.id_invoice },
    (err, invoic) => {
      err && res.status(501).send(err.message);
      res.status(200).send(invoic);
    }
  );
};

module.exports = { createInvoice, getInvoices, updateInvoice, deleteInvoice,getIdInvoices };
