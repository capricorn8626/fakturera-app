import { useAuth } from '../context/AuthContext';
import { useLanguage } from '../context/LanguageContext';

const Pricelist = () => {
    const { user, logout } = useAuth();
    const { t } = useLanguage();

    return (
        <div style={{ padding: '2rem' }}>
            <h1>Pricelist Page</h1>
            <p>Welcome, {user?.name || user?.email}!</p>
            <button onClick={logout} style={{ marginTop: '1rem', padding: '0.5rem 1rem' }}>
                Logout
            </button>
        </div>
    );
};

export default Pricelist;