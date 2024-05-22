import express from "express";
import additionRouter from "../../routes/addition.route.js";

const router = express.Router();

router.use("/", additionRouter);

export default router;
