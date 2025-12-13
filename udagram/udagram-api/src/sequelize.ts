import { Sequelize } from "sequelize-typescript";
import { config } from "./config/config";

export const sequelize = new Sequelize({
    username: config.username,
    password: String(config.password),
    database: config.database,
    host: config.host,

    dialect: "postgres",
    logging: false,

    dialectOptions: {
        ssl: {
            require: true,
            rejectUnauthorized: false,
        },
    },
});
