import { createContext, useContext, useState, useEffect } from 'react';
import { translationsAPI } from '../api';

const LanguageContext = createContext(null);

export const LanguageProvider = ({ children }) => {
    const [language, setLanguage] = useState(
        localStorage.getItem('language') || 'sv'
    );
    const [translations, setTranslations] = useState({});
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        const fetchTranslations = async () => {
            setLoading(true);
            try {
                const { data } = await translationsAPI.get(language);
                setTranslations(data);
            } catch (error) {
                console.error('Failed to fetch translations:', error);
            }
            setLoading(false);
        };

        fetchTranslations();
    }, [language]);

    const changeLanguage = (lang) => {
        localStorage.setItem('language', lang);
        setLanguage(lang);
    };

    const t = (key) => {
        return translations[key] || key;
    };

    return (
        <LanguageContext.Provider value={{
            language,
            translations,
            loading,
            changeLanguage,
            t
        }}>
            {children}
        </LanguageContext.Provider>
    );
};
export const useLanguage = () => {
    const context = useContext(LanguageContext);
    if (!context) {
        throw new Error('useLanguage must be used within a LanguageProvider');
    }
    return context;
};