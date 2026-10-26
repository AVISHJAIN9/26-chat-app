import Redis from 'ioredis';

let redisClient;

if (process.env.REDIS_HOST) {
    redisClient = new Redis({
        host: process.env.REDIS_HOST,
        port: process.env.REDIS_PORT,
        password: process.env.REDIS_PASSWORD
    });

    redisClient.on('connect', () => {
        console.log('Redis connected');
    });

    redisClient.on('error', (err) => {
        console.warn('Redis error:', err.message);
    });
} else {
    const memoryStore = new Map();
    redisClient = {
        get: async (key) => memoryStore.get(key) || null,
        set: async (key, val) => memoryStore.set(key, val),
        del: async (key) => memoryStore.delete(key),
        on: () => {}
    };
    console.log('Using in-memory store for Redis blacklist');
}

export default redisClient;