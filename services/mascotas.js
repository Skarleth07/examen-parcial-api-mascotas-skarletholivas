const db = require('./db');
const helper = require('../helper');
const config = require('../config');

async function getMultiple(page = 1) {
    const offset = helper.getOffset(page, config.listPerPage);
    const rows = await db.query(
        `SELECT id, nombre, ubicacion, raza, precio
    FROM mascotas LIMIT ${offset},${config.listPerPage}`
    );
    const data = helper.emptyOrRows(rows);
    const meta = { page };

    return {
        data,
        meta
    }
}

async function create(mascota) {
    const result = await db.query(
        `INSERT INTO mascotas 
      (nombre, ubicacion, raza, precio) 
      VALUES 
      ( '${mascota.nombre}',
        "${mascota.ubicacion}",
        '${mascota.raza}',
        '${mascota.precio}')`
    );

    let message = 'Error al crear los datos';

    if (result.affectedRows) {
        message = 'datos de la mascota creados';
    }

    return { message };
}

async function update(id, mascota) {
    const result = await db.query(
        `UPDATE mascotas 
      SET nombre="${mascota.nombre}",
      ubicacion="${mascota.ubicacion}",
      raza="${mascota.raza}", 
      precio="${mascota.precio}"
      WHERE id=${id}`
    );

    let message = 'Error actualizando datos';

    if (result.affectedRows) {
        message = 'datos actualizados';
    }

    return { message };
}

async function remove(id) {
    const result = await db.query(
        `DELETE FROM mascotas WHERE id=${id}`
    );

    let message = 'Error borrando datos';

    if (result.affectedRows) {
        message = 'datos eliminados';
    }

    return { message };
}

module.exports = {
    getMultiple,
    create,
    update,
    remove
}