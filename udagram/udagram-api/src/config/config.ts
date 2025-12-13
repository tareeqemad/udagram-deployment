export const config = {
    username: process.env.POSTGRES_USERNAME,
    password: process.env.POSTGRES_PASSWORD,
    database: process.env.POSTGRES_DB,
    host: process.env.POSTGRES_HOST,
    port: Number(process.env.POSTGRES_PORT),

    awsRegion: process.env.AWS_REGION,
    awsProfile: process.env.AWS_PROFILE,
    awsMediaBucket: process.env.AWS_BUCKET,

    jwtSecret: process.env.JWT_SECRET,
};
