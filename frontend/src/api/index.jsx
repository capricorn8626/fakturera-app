import axios from 'axios';

const api = axios.create({
    baseURL: 'http://localhost:3001/api',
    headers: {
        'Content-Type': 'application/json',
    },
});
api.interceptors.request.use((config) => {
    const token = localStorage.getItem('token');
    if (token) {
        config.headers.Authorization = `Bearer ${token}`;
    }
    return config;
});
api.interceptors.response.use(
    (response) => response,
    (error) => {
        if (error.response?.status === 401) {
            localStorage.removeItem('token');
            window.location.href = '/';
        }
        return Promise.reject(error);
    }
);
export const authAPI = {
    login: (email, password) => api.post('/auth/login', { email, password }),

    getMe: () => api.get('/auth/me'),
};
export const translationsAPI = {
    get: (Lang) => api.get(`/translations/${Lang}`),
}
export const pricelistsAPI = {
    getAll: () =>
        api.get('/pricelists'),

    update: (articleNo, data) =>
        api.patch(`/pricelists/${articleNo}`, data),
};

export default api;