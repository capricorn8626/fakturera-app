import { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { useAuth } from '../context/AuthContext';
import { useLanguage } from '../context/LanguageContext';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import '../styles/login.css';
import '../styles/navbar.css';
import '../styles/footer.css';
import showPasswordIcon from '../api/icons/show_password.png';

const Login = () => {
    const navigate = useNavigate();
    const { login } = useAuth();
    const { t } = useLanguage();

    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const [error, setError] = useState('');
    const [loading, setLoading] = useState(false);

    const handleSubmit = async (e) => {
        e.preventDefault();
        setError('');
        setLoading(true);

        try {
            await login(email, password);
            navigate('/pricelist');
        } catch (err) {
            setError(t('login.error') || 'Invalid credentials');
        } finally {
            setLoading(false);
        }
    };

    return (
        <div className="login-container">
            <div className="background-container">
                <img id="background-image" src="https://storage.123fakturera.se/public/wallpapers/sverige43.jpg" alt="Background" />
            </div>
            <Navbar />
            <div className="content">
                <div className="login-content-root">
                    <div className="back-login">
                        <form novalidate="" autocomplete="off">
                            <h2 className="login-heading">{t('login.title')}</h2>
                            <section className="login-section">
                                <div className="login-email">
                                    <div><label for="" className="login-email-label">{t('login.emailLabel')}</label></div>
                                    <input className="login-input" type="email" id="email" required="" name="username" value="" autocomplete="on" placeholder={t('login.email')} />
                                </div>
                                <span className="email-error-span error-span"></span>
                                <div className="login-password">
                                    <div>
                                        <label for="" className="login-password-label">{t('login.passwordLabel')}</label>
                                    </div>
                                    <div className="password-input-div">
                                        <input className="login-input" type="password" id="password" required="" name="password" value="" placeholder={t('login.password')} />
                                        <img id="show-password-img" src={showPasswordIcon} alt="" />
                                    </div>
                                </div>
                                <span className="password-error-span error-span"></span>
                                <section className="invalid-credentials"></section>
                            </section>
                            <div className="Login-Button-div">
                                <button className="Login-Button" type="submit">{t('login.button')}</button>
                            </div>
                        </form>
                        <section className="gotodifferntlink">
                            <a href="#" className="login-new-customer">{t('login.register')}</a>
                            <a id="forgot-password-link" className="login-forgot-password" href="#">{t('login.forgotPassword')}</a>
                        </section>
                    </div>
                </div>
            </div>
            <Footer />
        </div >
    );
};

export default Login;