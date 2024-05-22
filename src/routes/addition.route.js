import express from "express";
import additionController from "../controllers/addition.controller.js";

const router = express.Router();

router.post("/addition", additionController.addition);

export default router;
