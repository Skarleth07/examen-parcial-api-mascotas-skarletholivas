const express = require('express');
const router = express.Router();
const mascotas = require('../services/mascotas');

/* GET mascotas */
router.get('/', async function(req, res, next) {
  try {
    res.json(await mascotas.getMultiple(req.query.page));
  } catch (err) {
    console.error(`Error cuando se muestran los datos `, err.message);
    next(err);
  }
});

/* POST mascotas */
router.post('/', async function(req, res, next) {
    try {
      res.json(await mascotas.create(req.body));
    } catch (err) {
      console.error(`Error creando datos`, err.message);
      next(err);
    }
  });

  /* PUT mascotas */
router.put('/:id', async function(req, res, next) {
    try {
      res.json(await mascotas.update(req.params.id, req.body));
    } catch (err) {
      console.error(`Error actualizando los datos`, err.message);
      next(err);
    }
  });

  /* DELETE mascotas */
router.delete('/:id', async function(req, res, next) {
    try {
      res.json(await mascotas.remove(req.params.id));
    } catch (err) {
      console.error(`Error eliminando datos`, err.message);
      next(err);
    }
  });

module.exports = router;