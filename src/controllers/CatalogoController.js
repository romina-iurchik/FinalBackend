const Catalogo = require("../models/Catalogo");

//router.get("/listadoCatalogo", CatalogoController);
const CatalogoController = {
  listadoCatalogo: async (req, res) => {
    try {
      const listado = await Catalogo.findAll();
      res.json(listado);
    } catch (error) {
      console.error("Error al consultar el catalogo de Trailerflix", error);
      res.status(500).json({ error: error.message });
    }
  },
};

module.exports = CatalogoController;
