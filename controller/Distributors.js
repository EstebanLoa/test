const Distributor = require("../model/Distributor");

const createDistributor = (req, res) => {
  let distributor = new Distributor({
    id_distributor: req.body.id_distributor,
    ruc_distributor: req.body.ruc_distributor,
    name_distributor: req.body.name_distributor,
    id_product: req.body.id_product,
    dealerPrice: req.body.dealerPrice,
    subtotal: req.body.subtotal,
    unit_profit: req.body.subtotal - req.body.dealerPrice,
  });
  distributor.save((err, use) => {
    err && res.status(500).json(err.message);
    res.status(200).json(use);
  });
};

const getDistributors = (req, res) => {
  Distributor.find((err, use) => {
    err && res.status(500).send(err.message);
    res.status(200).json(use);
  });
};

const getIdDistributors = (req, res) => {
  Distributor.find(
    { id_distributor: req.body.id_distributor},
    (err, use) => {
      err && res.status(500).send(err.message);
      res.status(200).send(use);
    }
  );
};
const updateDistributor = (req, res) => {
  Distributor.findOneAndUpdate(
    { id_distributor: req.body.id_distributor },
    {
      ruc_distributor: req.body.ruc_distributor,
      name_distributor: req.body.name_distributor,
      id_product: req.body.id_product,
      dealerPrice: req.body.dealerPrice,
      subtotal: req.body.subtotal,
      unit_profit: req.body.subtotal - req.body.dealerPrice,
    },
    (err, use) => {
      err && res.status(500).send(err.message);
      res.status(200).send(use);
    }
  );
};

const deleteDistributor = (req, res) => {
  Distributor.findOneAndDelete({ id_distributor: req.body.id_distributor }, (err, use) => {
    err && res.status(501).send(err.message);
    res.status(200).send(use);
  });
};

module.exports = { createDistributor, getDistributors, updateDistributor, deleteDistributor, getIdDistributors };
